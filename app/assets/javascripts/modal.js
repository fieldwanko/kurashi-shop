$(function() {
  $('.orderCheck').click(function(){
    let a = $(this).attr('id').toString();
    console.log(a)
    $('.' + a).fadeIn();
  });
  $('.fa-times').click(function(){
    $('.detailModalWrapper').fadeOut();
  });
});