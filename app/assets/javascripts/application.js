//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function() {
$("body").keyup(function(e){
  if(e.keyCode === 77)
    $("body").toggleClass("mole");
});
  $("body").mousemove(function(e){
    $("body").css('background-position',(e.pageX - 250)+'px '+(e.pageY - 250)+'px');
  });
});
