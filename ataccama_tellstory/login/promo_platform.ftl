<div class="${properties.promoPlatformClass!}">
  <div class="${properties.promoPlatformContentClass!}">
    <div class="${properties.promoTitleClass!} ${properties.promoPlatformTitleClass!}">
      ${msg("promoPlatformTitle")?no_esc}
    </div>

    <div class="${properties.promoPlatformFeatureListClass!} ${properties.promoTextClass!}">
      <a class="${properties.promoPlatformFeatureClass!}" href="${properties.promoPlatformDataDiscoveryUrl!}" target="_blank">
        <div class="${properties.promoPlatformFeatureIconContainerClass!}">
          <img
            class="${properties.promoPlatformFeatureIconClass!}"
            src="${url.resourcesPath}/img/promo_platform-data_discovery.svg?v=1"
          />
        </div>
        <span class="${properties.promoPlatformFeatureTextClass!}">
          ${msg("promoPlatformDataDiscovery")}
        </span>
      </a>

      <a class="${properties.promoPlatformFeatureClass!}" href="${properties.promoPlatformCatalogUrl!}" target="_blank">
        <div class="${properties.promoPlatformFeatureIconContainerClass!}">
          <img
            class="${properties.promoPlatformFeatureIconClass!}"
            src="${url.resourcesPath}/img/promo_platform-catalog.svg"
          />
        </div>
        <span class="${properties.promoPlatformFeatureTextClass!}">
          ${msg("promoPlatformCatalog")}
        </span>
      </a>

      <a class="${properties.promoPlatformFeatureClass!}" href="${properties.promoPlatformDqmUrl!}" target="_blank">
        <div class="${properties.promoPlatformFeatureIconContainerClass!}">
          <img
            class="${properties.promoPlatformFeatureIconClass!}"
            src="${url.resourcesPath}/img/promo_platform-data_quality.svg"
          />
        </div>
        <span class="${properties.promoPlatformFeatureTextClass!}">
          ${msg("promoPlatformDqm")}
        </span>
      </a>

      <a class="${properties.promoPlatformFeatureClass!}" href="${properties.promoPlatformMdmUrl!}" target="_blank">
        <div class="${properties.promoPlatformFeatureIconContainerClass!}">
          <img
            class="${properties.promoPlatformFeatureIconClass!}"
            src="${url.resourcesPath}/img/promo_platform-mdm.svg"
          />
        </div>
        <span class="${properties.promoPlatformFeatureTextClass!}">
          ${msg("promoPlatformMdm")}
        </span>
      </a>

      <a class="${properties.promoPlatformFeatureClass!}" href="${properties.promoPlatformBigDataUrl!}" target="_blank">
        <div class="${properties.promoPlatformFeatureIconContainerClass!}">
          <img
            class="${properties.promoPlatformFeatureIconClass!}"
            src="${url.resourcesPath}/img/promo_platform-big_data.svg"
          />
        </div>
        <span class="${properties.promoPlatformFeatureTextClass!}">
          ${msg("promoPlatformBigData")}
        </span>
      </a>
    </div>
  </div>
</div>