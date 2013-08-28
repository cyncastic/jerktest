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
	$('a.jerkbox').slimbox
    overlayOpacity: 0.9,
    captionAnimationDuration: 250,
    counterText: null,
    closeKeys: [27, 70],
    nextKeys: [39, 83]
  , (el)->
  	[el.href, $(el).data('title') + '<br />' + $(el).data('medium') + '<br />' + $(el).data('year') + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' + $(el).data('length') + 'x' + $(el).data('width')]