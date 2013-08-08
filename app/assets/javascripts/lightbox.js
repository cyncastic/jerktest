$(document).ready(function($) {

  $('.jerkbox').click(function(e) {
    e.preventDefault();
    var image_href = $(this).attr("href");

    if ($('#lightbox').length > 0) { // #lightbox exists

      $('#content').html('<img src="' + image_href + '" />');
      $('#lightbox').show();

    }else { //#lightbox does not exist

      var lightbox =
        '<div id="lightbox">' +
            '<div id="content">' +
                '<img src="' + image_href +'" />' +
            '</div>' +
        '</div>';

      $('body').append(lightbox);
    }
  });

});

$(document).on('click', '#lightbox', function(){
  $('#lightbox').hide();
});

