//= require jquery
//= require jquery_ujs
//= require pen/markdown
//= require pen

try{Typekit.load();}catch(e){}

// config
var $el = $('#content');
var options = {
  editor: $el[0],
  debug: true,
  list: [
    'bold', 'italic', 'underline', 'blockquote', 'insertorderedlist', 'insertunorderedlist',
    'inserthorizontalrule', 'indent', 'outdent', 'createlink', 'insertimage'
  ]
};

// create editor
if ($el.length) {
  var pen = window.pen = new Pen(options);
  $el.addClass('hinted');

  $('form').on('submit', function() {
    $('#essay_content').val(pen.getContent());
  });

}
