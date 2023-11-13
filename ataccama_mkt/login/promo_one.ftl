<div class="${properties.promoOneContentClass!}">
  <form class="${properties.promoOneFormClass!}" action="${properties.ataccamaOneUrl!}" target="_blank">
    <div class="${properties.promoTitleClass!} ${properties.promoOneTitleClass!}">
      ${msg("promoOneTitle")?no_esc}
    </div>

    <input class="${properties.promoButtonClass!}" type="submit" value="${msg("promoOneButton")}" />
  </form>

  <div class="${properties.promoOneVideoAspectRatioClass!}">
    <div class="${properties.promoOneVideoBackgroundClass!}" id="video_play_button">
      <div class="${properties.promoOneVideoPlayButtonContainerClass!}" data-vbtype="video" data-autoplay="true" data-href="https://www.youtube.com/watch?v=oD4naqq4hIw">
        <div class="${properties.promoOneVideoPlayButtonClass!}"></div>
      </div>
    </div>
  </div>
</div>