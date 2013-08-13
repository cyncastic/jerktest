# Sortable tables
$ ->
	fixHelper = (e, ui) ->
	  ui.children().each ->
	    $(this).width $(this).width()
	    $(this).height $(this).height()
	  ui

	$("tbody.sorts").sortable
	    axis: 'y'
	    update: ->
	      $.post($(this).data('update-url'), $(this).sortable('serialize'))
	    helper: fixHelper

# Fadeout deleted entries
$ ->
  $(".delete_btn").bind "ajax:success", ->
    $(this).closest("tr").fadeOut()