<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
  <#if section = "title">
    ${msg("updatePasswordTitle")}
  <#elseif section = "header">
    ${msg("updatePasswordTitle")}
  <#elseif section = "form">
    <form id="kc-passwd-update-form" class="${properties.formClass!}" action="${url.loginAction}" method="post">
      <input type="text" id="username" name="username" value="${username}" autocomplete="username" readonly="readonly" style="display:none;"/>
      <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>

      <div class="${properties.formGroupClass!}">
        <div class="${properties.formLabelWrapperClass!}">
          <label for="password-new" class="${properties.formLabelClass!}">${msg("passwordNew")}</label>
        </div>
        <div class="${properties.kcInputWrapperClass!}">
          <input type="password" id="password-new" name="password-new" class="${properties.formInputClass!}" autofocus autocomplete="new-password" />
        </div>
      </div>

      <div class="${properties.formGroupClass!}">
        <div class="${properties.formLabelWrapperClass!}">
          <label for="password-confirm" class="${properties.formLabelClass!}">${msg("passwordConfirm")}</label>
        </div>
        <div class="${properties.kcInputWrapperClass!}">
          <input type="password" id="password-confirm" name="password-confirm" class="${properties.formInputClass!}" autocomplete="new-password" />
        </div>
      </div>

      <div class="${properties.formGroupClass!}">
        <div id="kc-form-options" class="${properties.formOptionsClass!}">
          <div class="${properties.kcFormOptionsWrapperClass!}">
          </div>
        </div>

        <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
          <input class="${properties.formButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}"/>
        </div>
      </div>
    </form>
  </#if>
</@layout.registrationLayout>
