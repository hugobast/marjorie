//= require jquery
//= require jquery_ujs
//= require pen
//= require pen/src/markdown

try{Typekit.load();}catch(e){}

// config
var $el = $('#content');
var options = {
  editor: $el[0],
  debug: true,
  stay: true,
  list: [
    'insertimage', 'blockquote', 'h2', 'h3', 'p', 'code', 'insertorderedlist', 'insertunorderedlist', 'inserthorizontalrule',
    'indent', 'outdent', 'bold', 'italic', 'underline', 'createlink'
  ]
};

// create editor
var pen = window.pen = new Pen(options);
$el.addClass('hinted');
