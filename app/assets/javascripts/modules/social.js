(function(exports, $) {
  $('.twitter, .facebook, .linkedin').on('click', function (event) {
    event.preventDefault();
  });

  $('.twitter').sharrre({
    share: {
      twitter: true
    },
    buttons: {
      twitter: false
    },
    template: '<a href="#"><span class="symbol">&#xe286</span></a>',
    enableHover: false,
    enableTracking: false,
    urlCurl: '',
    click: function (api) {
      api.openPopup('twitter')
    }
  });

  $('.linkedin').sharrre({
    share: {
      linkedin: true
    },
    buttons: {
      linkedin: false
    },
    template: '<a href="#"><span class="symbol">&#xe252</span></a>',
    enableHover: false,
    enableTracking: false,
    urlCurl: '',
    click: function (api) {
      api.openPopup('linkedin')
    }
  });

  $('.facebook').sharrre({
    share: {
      facebook: true
    },
    buttons: {
      facebook: false
    },
    template: '<a href="#"><span class="symbol">&#xe227</span></a>',
    enableHover: false,
    enableTracking: false,
    click: function (api, options) {
      FB.ui({
        method: 'feed',
        link: options.url,
        caption: options.text
      }, function () {
      });
    }
  });
})(window, jQuery);
