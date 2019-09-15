$(document).on("change","#addStockForm",function(event){
  let value = $("#addStockForm").val()
  let nowStock = $('#nowStock').val()
  $('#addStock').val(parseInt(value) + parseInt(nowStock));
});