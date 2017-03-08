(function(exports, $) {
  var $el = $('#content');

  if ($el.length) {
    var options = {
      editor: $el[0],
      stay: false,
      list: [
        'bold', 'italic', 'underline', 'blockquote', 'insertorderedlist', 'insertunorderedlist',
        'inserthorizontalrule', 'indent', 'outdent', 'createlink'
      ]
    };

    var pen = exports.pen = new Pen(options);

    pen.on('paste', function (event) {
      event.preventDefault();

      var html = cleaner(event.clipboardData.getData('text/html'));

      document.execCommand('insertHTML', false, html);
      pen.cleanContent({cleanAttrs: ['align']});
    });


    $('form').on('submit', function () {
      $('#essay_content').val(pen.getContent());
    });

    $('.insert-image').on('click', function (event) {
      pen.focus();
      pen.execCommand('insertImage', $(this).data('image'));
      event.preventDefault();
    });
  }
})(window, jQuery);
