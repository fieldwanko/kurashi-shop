// 複数条件がある検索の場合（sell_user)
$(function(){
  $('.optionA').click(function(){
    $('.searchA').fadeIn();
    $('.optionA').addClass("btn-sky");
    $('.searchB').hide();
    $('.optionB').removeClass("btn-sky");
    $('.searchC').hide();
    $('.optionC').removeClass("btn-sky");
    $('.searchD').hide();
    $('.optionD').removeClass("btn-sky");
  });
});
$(function(){
  $('.optionB').click(function(){
    $('.searchB').fadeIn();
    $('.optionB').addClass("btn-sky");
    $('.searchA').hide();
    $('.optionA').removeClass("btn-sky");
    $('.searchC').hide();
    $('.optionC').removeClass("btn-sky");
    $('.searchD').hide();
    $('.optionD').removeClass("btn-sky");
  });
});
$(function(){
  $('.optionC').click(function(){
    $('.searchC').fadeIn();
    $('.optionC').addClass("btn-sky");
    $('.searchA').hide();
    $('.optionA').removeClass("btn-sky");
    $('.searchB').hide();
    $('.optionB').removeClass("btn-sky");
    $('.searchD').hide();
    $('.optionD').removeClass("btn-sky");
  });
});
$(function(){
  $('.optionD').click(function(){
    $('.searchD').fadeIn();
    $('.optionD').addClass("btn-sky");
    $('.searchA').hide();
    $('.optionA').removeClass("btn-sky");
    $('.searchB').hide();
    $('.optionB').removeClass("btn-sky");
    $('.searchC').hide();
    $('.optionC').removeClass("btn-sky");
  });
});



