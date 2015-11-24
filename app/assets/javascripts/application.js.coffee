#= require jquery
#= require jquery_ujs
#= require Sharrre/jquery.sharrre

$('.twitter, .facebook, .linkedin').on 'click', (event) ->
  event.preventDefault()

$('.twitter').sharrre
  share:
    twitter: true
  template: '<a href="#"><span class="symbol">&#xe286</span></a>'
  enableHover: false
  enableTracking: false
  urlCurl: ''
  click: (api, options) ->
    api.openPopup 'twitter'

$('.linkedin').sharrre
  share:
    linkedin: true
  template: '<a href="#"><span class="symbol">&#xe252</span></a>'
  enableHover: false
  enableTracking: false
  click: (api, options) ->
    api.openPopup 'linkedin'

$('.facebook').sharrre
  share:
    facebook: true
  template: '<a href="#"><span class="symbol">&#xe227</span></a>'
  enableHover: false
  enableTracking: false
  click: (api, options) ->
    # api.openPopup 'facebook'

    FB.ui
      method: 'feed',
      link: options.url,
      caption: options.text,
    , (response) ->
