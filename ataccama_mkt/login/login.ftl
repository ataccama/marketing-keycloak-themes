<#import "template.ftl" as layout>
<@layout.registrationLayout displayFooter=true; section>
    <#if section = "inner-styles">
      <style>
          div.form {
              opacity: 0;
              transition: opacity .2s;
          }
      </style>
    <#elseif section = "inner-scripts">
      <script>
        document.addEventListener ("DOMContentLoaded", function () {
          var txt = "You will shortly receive an email with a password reset link."
          var alertEl = document.querySelector (".alert")
          var formEl = document.querySelector (".form")

          if (alertEl && alertEl.innerText === txt) {
            formEl.style.opacity = 0
          } else {
            formEl.style.opacity = 1
          }
        });

        document.addEventListener ("DOMContentLoaded", (event) => {
          let email = getUrlParameter ('email');

          if (email) {
            let field = document.getElementById ('username');
            field.value = email;
          }
        });

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
    <#elseif section = "title">
        ${msg("loginTitle",(client.name!''))}
    <#elseif section = "header">
        ${msg("loginHeader")?no_esc}
    <#elseif section = "form">
        <#if realm.password>
          <form class="${properties.formClass!}" onsubmit="login.disabled = true; return true;"
                action="${url.loginAction}" method="post">
            <div class="${properties.formGroupClass!}">
              <div class="${properties.formLabelWrapperClass!}">
                <label for="username"
                       class="${properties.formLabelClass!}"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
              </div>

                <#if usernameEditDisabled??>
                  <input tabindex="1" id="username" class="${properties.formInputClass!}" name="username"
                         value="${(login.username!'')}" type="text" disabled/>
                <#else>
                  <input tabindex="1" id="username" class="${properties.formInputClass!}" name="username"
                         value="${(login.username!'')}" type="text" autofocus autocomplete="off"/>
                </#if>
            </div>

            <div class="${properties.formGroupClass!}">
              <div class="${properties.formLabelWrapperClass!}">
                <label for="password" class="${properties.formLabelClass!}">${msg("password")}</label>
              </div>


              <div class="${properties.formPasswordGroupClass!}">
                <input tabindex="2" id="password" class="${properties.formInputClass!} ${properties.formPasswordClass!}"
                       name="password" type="password" autocomplete="off"/>
                  <#--                <div id="showPassword" class="${properties.formShowPasswordClass!}"></div>-->
              </div>
            </div>

            <div class="${properties.formGroupClass!}">
              <div class="${properties.formOptionsClass!}">
                  <#if realm.rememberMe && !usernameEditDisabled??>
                    <label class="${properties.formCheckboxLabelClass!}">
                        <#if login.rememberMe??>
                          <input tabindex="3" id="rememberMe" class="${properties.formCheckboxClass!}" name="rememberMe"
                                 type="checkbox" checked/> ${msg("rememberMe")}
                        <#else>
                          <input tabindex="3" id="rememberMe" class="${properties.formCheckboxClass!}" name="rememberMe"
                                 type="checkbox"/> ${msg("rememberMe")}
                        </#if>
                    </label>
                  </#if>
              </div>

              <div class="d-flex justify-content-between align-items-center">
                <input tabindex="4" class="${properties.formButtonClass!}" name="login" id="kc-login" type="submit"
                       value="${msg("doLogIn")}"/>
                  <#if realm.resetPasswordAllowed>
                    <div>
                      <a tabindex="5" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a>
                    </div>
                  </#if>
              </div>
            </div>
              <#if realm.password && social.providers??>
                <div class="${properties.formSocialButtonsOrClass!}">
                  <span>${msg("formSocialButtonsOr")}</span>
                </div>
                <ul class="${properties.formSocialButtonsListClass!}">
                    <#list social.providers as p>
                      <li class="${properties.formSocialButtonsListItemClass!}">
                        <a href="${p.loginUrl}" id="zocial-${p.alias}"
                           class="${properties.formButtonClass!} ${properties.formSocialButtonClassPrefix!}${p.providerId}">
                          <span class="form-button__icon"></span>
                          <span class="form-button__label">${p.displayName}</span>
                        </a>
                      </li>
                    </#list>
                </ul>
              </#if>
          </form>
        </#if>

    <#elseif section = "info">
        <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
          <div class="${properties.formNavigationLinksClass!}">
            <span>${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}"
                                         class="${properties.formPrimaryLinkClass!}">${msg("doRegister")}</a></span>
          </div>
        </#if>
    </#if>
</@layout.registrationLayout>
