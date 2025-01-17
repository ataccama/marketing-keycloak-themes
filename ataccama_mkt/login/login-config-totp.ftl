<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
  <#if section = "title">
    ${msg("loginTotpTitle")}
  <#elseif section = "header">
    ${msg("loginTotpTitle")}
  <#elseif section = "form">


  <ol id="kc-totp-settings">
    <li>
      <p>${msg("loginTotpStep1")}</p>

      <ul id="kc-totp-supported-apps">
        <#list totp.policy.supportedApplications as app>
        <li>${app}</li>
        </#list>
      </ul>
    </li>

    <#if mode?? && mode = "manual">
      <li>
        <p>${msg("loginTotpManualStep2")}</p>
        <p><span id="kc-totp-secret-key">${totp.totpSecretEncoded}</span></p>
        <p><a href="${totp.qrUrl}" id="mode-barcode">${msg("loginTotpScanBarcode")}</a></p>
      </li>
      <li>
        <p>${msg("loginTotpManualStep3")}</p>
        <ul>
          <li id="kc-totp-type">${msg("loginTotpType")}: ${msg("loginTotp." + totp.policy.type)}</li>
          <li id="kc-totp-algorithm">${msg("loginTotpAlgorithm")}: ${totp.policy.algorithm}</li>
          <li id="kc-totp-digits">${msg("loginTotpDigits")}: ${totp.policy.digits}</li>
          <li id="kc-totp-period">${msg("loginTotpInterval")}: ${totp.policy.period}</li>
        </ul>
      </li>
    <#else>
      <li>
        <p>${msg("loginTotpStep2")}</p>
        <img id="kc-totp-secret-qr-code" src="data:image/png;base64, ${totp.totpSecretQrCode}" alt="Figure: Barcode"><br/>
        <p><a href="${totp.manualUrl}" id="mode-manual">${msg("loginTotpUnableToScan")}</a></p>
      </li>
    </#if>
    <li>
      <p>${msg("loginTotpStep3")}</p>
    </li>
  </ol>

  <form action="${url.loginAction}" class="${properties.formClass!}" id="kc-totp-settings-form" method="post">
    <div class="${properties.formGroupClass!}">
      <div class="${properties.kcInputWrapperClass!}">
        <input type="text" id="totp" name="totp" autocomplete="off" class="${properties.formInputClass!}" />
      </div>
      <input type="hidden" id="totpSecret" name="totpSecret" value="${totp.totpSecret}" />
    </div>

    <input class="${properties.formButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}"/>
  </form>
  </#if>
</@layout.registrationLayout>
