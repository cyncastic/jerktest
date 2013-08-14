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
    captionAnimationDuration: 0,
    counterText: null,
    closeKeys: [27, 70],
    nextKeys: [39, 83]
  , (el)->
  	[el.href, 'asdfadf', 'asdfsadfasdf']
