$(function(){
  $('#myHistory').click(function(){
    $('#appendGive').addClass("off");
    $('#appendReceive').addClass("off");
    $('#appendEach').removeClass("off");
    $('#appendEach').fadeIn();
  });
});

$(function(){
  $('#giveHistory').click(function(){
    $('#appendEach').addClass('off');
    $('#appendReceive').addClass("off");
    $('#appendGive').removeClass('off');
    $('#appendGive').fadeIn();
  });
});

$(function(){
  $('#receiveHistory').click(function(){
    $('#appendEach').addClass('off');
    $('#appendGive').addClass("off");
    $('#appendReceive').removeClass('off');
    $('#appendReceive').fadeIn();
  });
});