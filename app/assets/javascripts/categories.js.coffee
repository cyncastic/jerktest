# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->

  $("#admin").hover (->
    $(this).stop().animate left: "0"
  ), ->
    $(this).stop().animate left: "-180"

  $(".fancy").hover (->
    $(this).stop().animate boxShadow: "0 0 30px #000"
  ), ->
    $(this).stop().animate boxShadow: "0 0 0px #000"
