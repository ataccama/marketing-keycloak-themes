<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
  <#if section = "title">
    ${msg("loginTitle",realm.displayName)}
  <#elseif section = "header">
    <!-- Header -->
  <#elseif section = "form">
    <form id="kc-totp-login-form" class="${properties.formClass!}" action="${url.loginAction}" method="post">
      <div class="${properties.formGroupClass!}">
        <div class="${properties.formLabelWrapperClass!}">
          <label for="totp" class="${properties.formLabelClass!}">${msg("loginTotpOneTime")}</label>
        </div>

        <div class="${properties.kcInputWrapperClass!}">
          <input id="totp" name="totp" autocomplete="off" type="text" class="${properties.formInputClass!}" autofocus />
        </div>
      </div>

      <div class="${properties.formGroupClass!}">
        <div id="kc-form-options" class="${properties.formOptionsClass!}">
          <div class="${properties.kcFormOptionsWrapperClass!}">
          </div>
        </div>

        <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
          <div class="${properties.kcFormButtonsWrapperClass!}">
            <input class="${properties.formButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
            <input class="${properties.formButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" name="cancel" id="kc-cancel" type="submit" value="${msg("doCancel")}"/>
          </div>
        </div>
      </div>
    </form>
  </#if>
</@layout.registrationLayout>
