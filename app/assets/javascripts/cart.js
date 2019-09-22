// カート内商品がすでに売り切れた場合
$(function(){
  if($('.must').hasClass("mustDelete")){
  $('.cartToOrder').hide();
}
});