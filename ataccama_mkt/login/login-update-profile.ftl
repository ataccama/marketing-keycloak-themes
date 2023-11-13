<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
  <#if section = "title">
    ${msg("loginProfileTitle")}
  <#elseif section = "header">
    ${msg("loginProfileTitle")}
  <#elseif section = "form">
    <form id="kc-update-profile-form" class="${properties.formClass!}" action="${url.loginAction}" method="post">
      <#if user.editUsernameAllowed>
        <div class="${properties.formGroupClass!} ${messagesPerField.printIfExists('username',properties.kcFormGroupErrorClass!)}">
          <div class="${properties.formLabelWrapperClass!}">
            <label for="username" class="${properties.formLabelClass!}">${msg("username")}</label>
          </div>
          <div class="${properties.kcInputWrapperClass!}">
            <input type="text" id="username" name="username" value="${(user.username!'')}" class="${properties.formInputClass!}"/>
          </div>
        </div>
      </#if>
      <div class="${properties.formGroupClass!} ${messagesPerField.printIfExists('email',properties.kcFormGroupErrorClass!)}">
        <div class="${properties.formLabelWrapperClass!}">
          <label for="email" class="${properties.formLabelClass!}">${msg("email")}</label>
        </div>
        <div class="${properties.kcInputWrapperClass!}">
          <input type="text" id="email" name="email" value="${(user.email!'')}" class="${properties.formInputClass!}" />
        </div>
      </div>

      <div class="${properties.formGroupClass!} ${messagesPerField.printIfExists('firstName',properties.kcFormGroupErrorClass!)}">
        <div class="${properties.formLabelWrapperClass!}">
          <label for="firstName" class="${properties.formLabelClass!}">${msg("firstName")}</label>
        </div>
        <div class="${properties.kcInputWrapperClass!}">
          <input type="text" id="firstName" name="firstName" value="${(user.firstName!'')}" class="${properties.formInputClass!}" />
        </div>
      </div>

      <div class="${properties.formGroupClass!} ${messagesPerField.printIfExists('lastName',properties.kcFormGroupErrorClass!)}">
        <div class="${properties.formLabelWrapperClass!}">
          <label for="lastName" class="${properties.formLabelClass!}">${msg("lastName")}</label>
        </div>
        <div class="${properties.kcInputWrapperClass!}">
          <input type="text" id="lastName" name="lastName" value="${(user.lastName!'')}" class="${properties.formInputClass!}" />
        </div>
      </div>

      <div class="${properties.formGroupClass!}">
        <div id="kc-form-options" class="${properties.formOptionsClass!}">
          <div class="${properties.kcFormOptionsWrapperClass!}">
          </div>
        </div>

        <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
          <input class="${properties.formButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}" />
        </div>
      </div>
    </form>
  </#if>
</@layout.registrationLayout>