$(document).on("change","#productPrice",function(event){
  let value = $("#productPrice").val()
  $('#productFee').val(Math.round(value * 1.10 ));
  $('#productTotal').val(Math.round(value * 1.10 ));
});