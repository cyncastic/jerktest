
$ ->

  $("#admin").hover (->
    $(this).stop().animate left: "0"
  ), ->
    $(this).stop().animate left: "-180"

  $(".fancy").hover (->
    $(this).stop().animate boxShadow: "0 0 30px #000"
  ), ->
    $(this).stop().animate boxShadow: "0 0 0px #000"

