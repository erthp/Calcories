$(document).on('click','#menuplus', function(){
  $('#counter').text(Number($('#counter').text())+1);
});
$(document).on('click','#menuminus', function(){
  $('#counter').text(Number($('#counter').text())-1);
});