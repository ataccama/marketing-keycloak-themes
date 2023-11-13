<footer class="${properties.footerClass!}">
  <div class="${properties.layoutContentSpacerClass!}">
    <div class="${properties.footerContentClass!}">

      <div class="${properties.footerInfoClass!}">
        <div class="${properties.footerCopyrightClass!}">
          <#assign currentYear = .now?string('yyyy')>
          ${msg("footerCopyright", currentYear)}
        </div>

        <div class="${properties.footerLinksClass!}">
          <a class="${properties.footerLinkClass!}" href="${properties.ataccamaLegalUrl!}" target="_blank">${msg("footerLinkLegal")}</a>
          <a class="${properties.footerLinkClass!}" href="${properties.ataccamaHelpUrl!}" target="_blank">${msg("footerLinkHelp")}</a>
        </div>
      </div>
    </div>
  </div>
</footer>
