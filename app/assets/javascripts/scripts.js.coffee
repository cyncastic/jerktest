# Sortable tables
$ ->
  fixHelper = (e, ui) ->
    ui.children().each ->
      $(this).width $(this).width()
      $(this).height $(this).height()
    ui

  $('tbody.sorts').sortable
      axis: 'y'
      update: ->
        $.post($(this).data('update-url'), $(this).sortable('serialize'))
      helper: fixHelper

# Fadeout deleted entries
$ ->
  $('.delete_btn').bind 'ajax:success', ->
    $(this).closest("tr").fadeOut()


# Set the jerkboxes
$ ->
  $('.jerkbox a').slimbox
    overlayOpacity: 0.9,
    captionAnimationDuration: 250,
    counterText: null,
    closeKeys: [27, 70],
    nextKeys: [39, 83]
  , (el)->
      if typeof $(el).attr('data-sold') isnt 'undefined'
        myTitle = "<span class='sold'>" + $(el).data('title') + "</span>"
      else
        myTitle = $(el).data('title')
      if typeof $(el).attr('data-price') isnt 'undefined'
        myPrice = "<div class='price'>" + "$" + $(el).data('price') + "</div>"
      else
        myPrice = ""
      [el.href, myTitle + '<br />' + 
                myPrice +
                $(el).data('medium') + '<br />' + 
                $(el).data('year') + 
                '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' + 
                $(el).data('length') + 'x' + $(el).data('width')]