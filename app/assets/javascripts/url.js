$(document).on("change","#inputUrl",function(event){
  let valueA = $('#inputUrl').val();
  $('#urlKey').attr("href",valueA);
});

