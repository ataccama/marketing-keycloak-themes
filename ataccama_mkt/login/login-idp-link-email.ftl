<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
  <#if section = "title">
    ${msg("emailLinkIdpTitle", idpAlias)}
  <#elseif section = "header">
    ${msg("emailLinkIdpTitle", idpAlias)}
  <#elseif section = "form">
    <p id="instruction1" class="instruction">
      ${msg("emailLinkIdp1", idpAlias, brokerContext.username, realm.displayName)}
    </p>
    <p id="instruction2" class="instruction">
      ${msg("emailLinkIdp2")} <a href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailLinkIdp3")}
    </p>
    <p id="instruction3" class="instruction">
      ${msg("emailLinkIdp4")} <a href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailLinkIdp5")}
    </p>
  </#if>
</@layout.registrationLayout>