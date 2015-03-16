$el = $ '#content'

if $el.length
  options =
    editor: $el[0],
    stay: false,
    list: [
      'bold', 'italic', 'underline', 'blockquote', 'insertorderedlist', 'insertunorderedlist',
      'inserthorizontalrule', 'indent', 'outdent', 'createlink', 'insertimage'
    ]

  pen = window.pen = new Pen options

  $('form').on 'submit', ->
    $('#essay_content').val pen.getContent()

  $('.insert-image').on 'click', (event) ->
    pen.focus()
    pen.execCommand('insertImage', $(@).data('image'))
    event.preventDefault()
