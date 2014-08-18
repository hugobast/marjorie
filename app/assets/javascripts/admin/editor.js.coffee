content = $ '#content'
form = $ 'form'

content.editable
  editorClass: '.content'

  inlineMode: false

  imageUpload: true
  imageUploadURL: '/upload'