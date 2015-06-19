$el = $ '#content'

if $el.length
  options =
    editor: $el[0],
    stay: false,
    list: [
      'bold', 'italic', 'underline', 'blockquote', 'insertorderedlist', 'insertunorderedlist',
      'inserthorizontalrule', 'indent', 'outdent', 'createlink'
    ]

  pen = window.pen = new Pen options

  pen.on 'paste', (event) ->
    event.preventDefault()

    html = cleaner(event.clipboardData.getData 'text/html')

    document.execCommand 'insertHTML', false, html
    pen.cleanContent cleanAttrs: ['align']

  $('form').on 'submit', ->
    $('#essay_content').val pen.getContent()

  $('.insert-image').on 'click', (event) ->
    pen.focus()
    pen.execCommand('insertImage', $(@).data('image'))
    event.preventDefault()
