// var youtubeVideoId = 'oD4naqq4hIw'
// var videoPlayButtonId = 'video_play_button'
// var videoOverlayId = 'video_overlay'
// var videoPlayerId = 'video_player'
//
// document.addEventListener('DOMContentLoaded', function () {
//   // Load youtube API
//   var tag = document.createElement('script')
//   tag.src = 'https://www.youtube.com/iframe_api'
//   var firstScriptTag = document.getElementsByTagName('script')[0]
//   firstScriptTag.parentNode.insertBefore(tag, firstScriptTag)
//
//   var player
//   function initVideoPlayer () {
//     player = new YT.Player(videoPlayerId, {
//       videoId: youtubeVideoId,
//       events: {
//         'onReady': function (event) {
//           event.target.playVideo()
//         },
//       }
//     })
//   }
//
//   function destroyVideoPlayer () {
//     player.destroy()
//   }
//
//   var trigger = document.getElementById(videoPlayButtonId)
//   var overlay = document.getElementById(videoOverlayId)
//
//   if (trigger && overlay) {
//     trigger.onclick = function (event) {
//       event.preventDefault()
//       event.stopPropagation()
//       overlay.style.display = 'block'
//       initVideoPlayer()
//     }
//
//     overlay.onclick = function () {
//       overlay.style.display = 'none'
//       destroyVideoPlayer()
//     }
//   }
// }, false)
