<#macro registrationLayout bodyClass="" sectionClass="" register=false displayPromo=true displayFooter=false displayMessage=true verticallyCentered=false>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
          "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml" class="${properties.kcHtmlClass!}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="robots" content="noindex, nofollow">
    <link rel="apple-touch-icon" sizes="57x57" href="${url.resourcesPath}/favicons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="${url.resourcesPath}/favicons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="${url.resourcesPath}/favicons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="${url.resourcesPath}/favicons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="${url.resourcesPath}/favicons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="${url.resourcesPath}/favicons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="${url.resourcesPath}/favicons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="${url.resourcesPath}/favicons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="${url.resourcesPath}/favicons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="${url.resourcesPath}/favicons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="${url.resourcesPath}/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="${url.resourcesPath}/favicons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="${url.resourcesPath}/favicons/favicon-16x16.png">
    <link rel="manifest" href="${url.resourcesPath}/favicons/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="${url.resourcesPath}/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <meta name="viewport" content="width=device-width, initial-scale=1">

      <#if properties.meta?has_content>
          <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
          </#list>
      </#if>
    <title><#nested "title"></title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico"/>
      <#if properties.styles?has_content>
          <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}?v=${properties.themeVersion}" rel="stylesheet"/>
          </#list>
      </#if>

      <#if properties.scripts?has_content>
          <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}?v=${properties.themeVersion}" type="text/javascript"></script>
          </#list>
      </#if>

      <#if scripts??>
          <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
          </#list>
      </#if>

      <#nested "inner-styles">
      <#nested "inner-scripts">

    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-PDQCCZ8');</script>

  </head>

  <body>

  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PDQCCZ8"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>

  <div class="${properties.layoutBodyClass!} <#if register>Layout--register</#if>">
    <div class="${properties.layoutTopClass!}">
      <a href="${properties.ataccamaUrl!}" target="_blank" class="Logo">
        <img class="Logo-item" src="${url.resourcesPath}/img/ataccama-cloud-symbol@2x.png" alt="Ataccama">
      </a>
      <div class="${properties.layoutHeaderClass!}"><#if register>Sign in to <#else>Log in to </#if><#if client??>${client.name}<#else>Ataccama</#if></div>
    </div>
    <div class="${properties.layoutContainerClass!}">
      <div class="${properties.layoutLeftClass!}">
          <#--Response message-->
          <#if displayMessage && message?has_content>
            <div class="${properties.layoutInfoAreaClass!}">
              <div class="alert alert-${message.type}">
                  <#if message.type = 'success'><span class="${properties.kcFeedbackSuccessIcon!}"></span></#if>
                  <#if message.type = 'warning'><span class="${properties.kcFeedbackWarningIcon!}"></span></#if>
                  <#if message.type = 'error'><span class="${properties.kcFeedbackErrorIcon!}"></span></#if>
                  <#if message.type = 'info'><span class="${properties.kcFeedbackInfoIcon!}"></span></#if>
                <span>${message.summary?no_esc}</span>
              </div>
            </div>
          </#if>
          <#nested "form">
          <#nested "info">
      </div>
    </div>
      <#--    <div class="Banner">-->
      <#--      <div class="Banner-inner">-->
      <#--        <div class="Banner-image">-->
      <#--          <img src="http://satyr.io/200x50/?text=tellstory" alt="">-->
      <#--        </div>-->
      <#--        <div class="Banner-content">-->
      <#--          <div>Be the first to try TellStory, the smart data visualization tool</div>-->
      <#--        </div>-->
      <#--      </div>-->
      <#--    </div>-->
  </div>

  </html>
</#macro>
