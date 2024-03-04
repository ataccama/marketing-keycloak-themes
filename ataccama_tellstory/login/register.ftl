<#import "template.ftl" as layout>
<@layout.registrationLayout verticallyCentered=true register=true displayPromo=false displayMessage=false; section>
  <#if section = "title">
    ${msg("registerWithTitle",(client.name!''))}
  <#elseif section = "header">
    <!-- Header -->
    ${msg("registrationHeader")?no_esc}
  <#elseif section = "form">
    <form class="${properties.formClass!}" action="${url.registrationAction}" method="post">
      <div class="${properties.formDoubleGroupClass!}">
        <div class="${properties.formGroupClass!} ${properties.formDoubleGroupSubgroupClass!}">
          <div class="${properties.formLabelWrapperClass!}">
            <label for="firstName" class="${properties.formLabelClass!}">${msg("firstName")}</label>
          </div>
          <input type="text" id="firstName" class="${properties.formInputClass!}" name="firstName" value="${(register.formData.firstName!'')}" />
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
          <input type="text" id="lastName" class="${properties.formInputClass!}" name="lastName" value="${(register.formData.lastName!'')}" />
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
        <input type="text" id="email" class="${properties.formInputClass!}" name="email" value="${(register.formData.email!'')}" autocomplete="email" />
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
    </form>
  <#elseif section = "info">
    <div class="${properties.formOptionsClass!}">
      <span>${msg("alreadyHaveAnAccount")?no_esc} <a href="${url.loginUrl}">${msg("toLogin")?no_esc}</a></span>
    </div>
  </#if>
</@layout.registrationLayout>
