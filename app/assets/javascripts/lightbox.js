$(document).ready(function($) {
  $('.jerkbox').click(function(e) {
    e.preventDefault();
    theimage = $(this);
    var image_href = $(this).attr('href');
    var title = $(this).data('title');
    var medium = $(this).data('medium');
    var dimensions = $(this).data('width') + " x " + $(this).data('length');
    var year = $(this).data('year');

    if ($('#lightbox').length > 0) { // #lightbox exists
      $('#content').html('<img src="' + image_href + '" />');
      $('#lightbox').show();
    }else { //#lightbox does not exist
      var lightbox =
        '<div id="lightbox">' +
          '<div id="content">' +
            '<h1>' + title + '</h1>' +
            '<div>' +
              '<span>' + medium + '</span>' +
              '<span>' + dimensions + '</span>' +
              '<span>' + year + '</span>' +
            '</div>' +
            '<img src="' + image_href + '" />' +
          '</div>' +
        '</div>';
      $('body').append(lightbox);
    }
  });
});

$(document).on('click', '#lightbox', function(){
  $('#lightbox').hide();
});
