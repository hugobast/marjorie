$(window).on("scroll", function() {
  $(".sticky-navigation").toggleClass("sticky-navigation__shrink", $(this).scrollTop() > 80)
});
