$('.classification__reveal').on 'click', (event) ->
  event.preventDefault()

  willReveal = $('.classification__subsection-hidden').first()
  willReveal.removeClass('classification__subsection-hidden')

$('.classification').stick_in_parent
  offset_top: 100
  sticky_class: 'classification-stick'
