$('.classification__reveal').on 'click', (event) ->
  event.preventDefault()

  willReveal = $('.classification__subsection-hidden').first()
  willReveal.removeClass('classification__subsection-hidden')

$('.classification').Stickyfill();
