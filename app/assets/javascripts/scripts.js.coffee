# hover animatin for artworks
$ ->
  $("#admin").hover (->
    $(this).stop().animate left: "0"
  ), ->
    $(this).stop().animate left: "-180"

  $(".fancy").hover (->
    $(this).stop().animate boxShadow: "0 0 30px #000"
  ), ->
    $(this).stop().animate boxShadow: "0 0 0px #000"

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

# Auto complete for medium textfield
$ ->
  $("#mediumtxt").autocomplete source: $("#mediumtxt").data('auto-complete-source')

# Fadeout deleted entries
$ ->
  $(".delete_btn").bind "ajax:success", ->
    $(this).closest("tr").fadeOut()




$(".sortable").sortable
$(".sortable").disableSelection
