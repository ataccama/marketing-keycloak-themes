<div class="promo_deloitte-content">
  <div class="${properties.promoDeloitteClass!}">
    <div class="${properties.promoDeloitteLogosClass!}">
      <img
              src="${url.resourcesPath}/img/promo_gdpr-deloitte.svg"
              class="${properties.promoDeloitteLogoClass!}"
      />
      <img
              src="${url.resourcesPath}/img/logo-ataccama.svg"
              class="${properties.promoDeloitteLogoClass!}"
      />
    </div>

    <div class="${properties.promoTitleClass!} ${properties.promoDeloitteTitleClass!}">
      ${msg("promoDeloitteTitle")?no_esc}
    </div>

    <div class="${properties.promoDeloitteButtonsClass!}">
      <form class="${properties.promoDeloitteButtonClass!}" action="${properties.ataccamaGdprUrl!}" target="_blank">
        <input class="${properties.promoButtonClass!}" type="submit" value="${msg("promoDeloitteLearnMore")}"/>
      </form>

      <form class="${properties.promoDeloitteButtonClass!}" action="${properties.ataccamaCustomerSuccessUrl!}"
            target="_blank">
        <input class="${properties.promoButtonClass!}" type="submit" value="${msg("promoDeloitteCustomerSuccess")}"/>
      </form>
    </div>
  </div>
</div>