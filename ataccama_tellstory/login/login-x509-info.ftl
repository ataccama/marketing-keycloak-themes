<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
  <#if section = "title">
    ${msg("loginTitle",(realm.displayName!''))}
  <#elseif section = "header">
    <!-- Header -->
  <#elseif section = "form">

    <form id="kc-x509-login-info" class="${properties.formClass!}" action="${url.loginAction}" method="post">
      <div class="${properties.formGroupClass!}">

        <div class="${properties.formLabelWrapperClass!}">
          <label for="certificate_subjectDN" class="${properties.formLabelClass!}">${msg("clientCertificate")}</label>
        </div>
        <#if subjectDN??>
          <div class="${properties.formLabelWrapperClass!}">
             <label id="certificate_subjectDN" class="${properties.formLabelClass!}">${(subjectDN!"")}</label>
          </div>
        <#else>
          <div class="${properties.formLabelWrapperClass!}">
            <label id="certificate_subjectDN" class="${properties.formLabelClass!}">${msg("noCertificate")}</label>
          </div>
        </#if>
       </div>

      <div class="${properties.formGroupClass!}">

          <#if isUserEnabled>
              <div class="${properties.formLabelWrapperClass!}">
               <label for="username" class="${properties.formLabelClass!}">${msg("doX509Login")}</label>
              </div>
              <div class="${properties.formLabelWrapperClass!}">
               <label id="username" class="${properties.formLabelClass!}">${(username!'')}</label>
             </div>
          </#if>

      </div>

      <div class="${properties.formGroupClass!}">
        <div id="kc-form-options" class="${properties.formOptionsClass!}">
          <div class="${properties.kcFormOptionsWrapperClass!}">
          </div>
        </div>

        <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
          <div class="${properties.kcFormButtonsWrapperClass!}">
            <input class="${properties.formButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="login" id="kc-login" type="submit" value="${msg("doContinue")}"/>
            <#if isUserEnabled>
              <input class="${properties.formButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" name="cancel" id="kc-cancel" type="submit" value="${msg("doIgnore")}"/>
            </#if>
          </div>
        </div>
      </div>
    </form>
  </#if>

</@layout.registrationLayout>
