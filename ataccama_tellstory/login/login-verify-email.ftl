<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false verticallyCentered=true; section>
  <#if section = "title">
    ${msg("emailVerifyTitle")}
  <#elseif section = "form">
    <div class="${properties.emailVerifyClass!}">
      <h1 class="${properties.layoutHeaderClass!} ${properties.emailVerifyHeaderClass!}">
        ${msg("emailVerifyHeader")?no_esc}
      </h1>

      <div class="${properties.emailVerifyTextClass!}">
        <p>${msg("emailVerifyInstruction1")?no_esc}</p>
        <p>${msg("emailVerifyInstruction2")}</p>
      </div>

      <img
        src="${url.resourcesPath}/img/email_verify-mail.svg"
        class="${properties.emailVerifyImageClass!}"
      />

      <form action="${url.loginAction}" method="post">
        <input type="submit" class="${properties.emailVerifyButtonClass!}" value="${msg("emailVerifyResend")}" />
      </form>
    </div>
  </#if>
</@layout.registrationLayout>