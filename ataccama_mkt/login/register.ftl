<#import "template.ftl" as layout>
<@layout.registrationLayout verticallyCentered=true register=true displayPromo=false displayMessage=false; section>
  <#if section = "title">
    ${msg("registerWithTitle",(client.name!''))}
  <#elseif section = "header">
    <!-- Header -->
    ${msg("registrationHeader")?no_esc}
  <#elseif section = "form">

    <#--
      New users LDAP synchronization upon registration
    -->
    <script>
      function ldapSync() {
        var email = document.getElementById('email').value;
        const Http = new XMLHttpRequest();
        const url='https://api.ataccama.com/api/sync?email='+email;
        Http.open("GET", url);
        Http.send();
      }

      document.addEventListener ("DOMContentLoaded", (event) => {

        const utmParams = [
          'utm_source',
          'utm_medium',
          'utm_campaign'
        ];

        utmParams.forEach(param => {
          let utm_param = getUrlParameter(param);
          let input = document.getElementById('user.attributes.'+param);
          
          if(utm_param) {
            setCookie(param, utm_param, 1);
            input.value = utm_param;
          } else {
            let cookie_utm = getCookie(param);
            if(cookie_utm) {
              input.value = cookie_utm;
            }
          }
        });
      });
    </script>

    <form onsubmit="ldapSync();return true;" class="${properties.formClass!}" action="${url.registrationAction}" method="post">
      <div class="${properties.formDoubleGroupClass!}">
        <div class="${properties.formGroupClass!} ${properties.formDoubleGroupSubgroupClass!}">
          <div class="${properties.formLabelWrapperClass!}">
            <label for="firstName" class="${properties.formLabelClass!}">${msg("firstName")}</label>
          </div>
          <input type="text" id="firstName" class="${properties.formInputClass!}" name="firstName" value="${(register.formData.firstName!'')}" required />
          <#if messagesPerField.exists('firstName')>
            <div class="${properties.formInputErrorClass!}">
              ${messagesPerField.get('firstName')}
            </div>
          </#if>
        </div>

        <div class="${properties.formGroupClass!} ${properties.formDoubleGroupSubgroupClass!}">
          <div class="${properties.formLabelWrapperClass!}">
            <label for="lastName" class="${properties.formLabelClass!}">${msg("lastName")}</label>
          </div>
          <input type="text" id="lastName" class="${properties.formInputClass!}" name="lastName" value="${(register.formData.lastName!'')}" required />
          <#if messagesPerField.exists('lastName')>
            <div class="${properties.formInputErrorClass!}">
              ${messagesPerField.get('lastName')}
            </div>
          </#if>
        </div>
      </div>

      <div class="${properties.formGroupClass!}">
        <div class="${properties.formLabelWrapperClass!}">
          <label for="email" class="${properties.formLabelClass!}">${msg("email")}</label>
        </div>
        <input type="text" id="email" class="${properties.formInputClass!}" name="email" value="${(register.formData.email!'')}" autocomplete="email" required />
        <#if messagesPerField.exists('email')>
          <div class="${properties.formInputErrorClass!}">
            ${messagesPerField.get('email')}
          </div>
        </#if>
      </div>

      <#if !realm.registrationEmailAsUsername>
        <div class="${properties.formGroupClass!}">
          <div class="${properties.formLabelWrapperClass!}">
            <label for="username" class="${properties.formLabelClass!}">${msg("username")}</label>
          </div>
          <input type="text" id="username" class="${properties.formInputClass!}" name="username" value="${(register.formData.username!'')}" autocomplete="username" />
          <#if messagesPerField.exists('username')>
            <div class="${properties.formInputErrorClass!}">
              ${messagesPerField.get('username')}
            </div>
          </#if>
        </div>
      </#if>

      <div class="${properties.formGroupClass!}">
          <div class="${properties.formLabelWrapperClass!}">
            <label for="user.attributes.phone" class="${properties.formLabelClass!}">${msg("phone")}</label>
          </div>
          <input type="text" id="user.attributes.phone" class="${properties.formInputClass!}" name="user.attributes.phone" value="${(register.formData.phone!'')}" required />
          <#if messagesPerField.exists('user.attributes.phone')>
            <div class="${properties.formInputErrorClass!}">
              ${messagesPerField.get('user.attributes.phone')}
            </div>
          </#if>
        </div>

      <div class="${properties.formGroupClass!}">
          <div class="${properties.formLabelWrapperClass!}">
            <label for="user.attributes.company" class="${properties.formLabelClass!}">${msg("company")}</label>
          </div>
          <input type="text" id="user.attributes.company" class="${properties.formInputClass!}" name="user.attributes.company" value="${(register.formData.company!'')}" required />
          <#if messagesPerField.exists('user.attributes.company')>
            <div class="${properties.formInputErrorClass!}">
              ${messagesPerField.get('user.attributes.company')}
            </div>
          </#if>
        </div>

      <#if passwordRequired>
        <div class="${properties.formGroupClass!}">
          <div class="${properties.formLabelWrapperClass!}">
            <label for="password" class="${properties.formLabelClass!}">${msg("password")}</label>
          </div>
          <div class=" ${properties.formPasswordGroupClass!}">
            <input type="password" id="password" class="${properties.formInputClass!} ${properties.formPasswordClass!}" name="password" autocomplete="new-password"/>
            <div id="showPassword" class="${properties.formShowPasswordClass!}"></div>
          </div>
          <#if messagesPerField.exists('password')>
            <div class="${properties.formInputErrorClass!}">
              ${messagesPerField.get('password')}
            </div>
          </#if>
        </div>

        <div class="${properties.formGroupClass!}">
          <div class="${properties.formLabelWrapperClass!}">
            <label for="password-confirm" class="${properties.formLabelClass!}">${msg("passwordConfirm")}</label>
          </div>
          <div class="${properties.formPasswordGroupClass!}">
            <input type="password" id="password-confirm" class="${properties.formInputClass!} ${properties.formPasswordClass!}" name="password-confirm" />
            <div id="showPassword-confirm" class="${properties.formShowPasswordClass!}"></div>
          </div>
          <#if messagesPerField.exists('password-confirm')>
            <div class="${properties.formInputErrorClass!}">
              ${messagesPerField.get('password-confirm')}
            </div>
          </#if>
        </div>
      </#if>

      <#if recaptchaRequired??>
        <div class="form-group">
          <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
        </div>
      </#if>

      <div class="${properties.formGroupClass!}">
        <#include "consent.ftl">
      </div>

      <div class="${properties.formGroupClass!}">
        <input class="${properties.formButtonClass!}" type="submit" value="${msg("doRegister")}" />
      </div>

      <input type="hidden" id="user.attributes.utm_source" style="display:none;" name="user.attributes.utm_source" value="${(register.formData['user.attributes.utm_source']!'')}" />
      <input type="hidden" id="user.attributes.utm_medium" style="display:none;" name="user.attributes.utm_medium" value="${(register.formData['user.attributes.utm_medium']!'')}" />
      <input type="hidden" id="user.attributes.utm_campaign" style="display:none;" name="user.attributes.utm_campaign" value="${(register.formData['user.attributes.utm_campaign']!'')}" />

    </form>
  <#elseif section = "info">
    <div class="${properties.formOptionsClass!}">
      <span>${msg("alreadyHaveAnAccount")?no_esc} <a href="${url.loginUrl}">${msg("toLogin")?no_esc}</a></span>
    </div>
  </#if>
</@layout.registrationLayout>
