// クーポンを選択した場合、クーポン適用後の金額を表示
$(function(){
  $('.couponSelect').click(function(){
    $('.couponPriceBox').addClass("is-active");
  });
});

// クーポンを利用するを押した場合、選択フォームの追加
$(function(){
  $('#couponStart').click(function(){
    $('.couponPriceField').fadeIn();
    $('.couponPriceBox').fadeIn();
    $('.coupon0').removeAttr('checked');
    $('.coupon1').removeAttr('checked');
    $('.coupon2').removeAttr('checked');
    $('#couponStart').hide();
  });
});

// クーポン使用後の金額変更

$(function(){
  $('.coupon2').click(function(){
    if ($('#couponLimit').val() === "0"){
    $('#couponSelectArray').val(parseInt($(this).val()));
    } else {
      $('#couponSelectArray2').val($(this).val());
    }
    $(this).hide();
    let ready = $('#readyTotal').val();
    $('#readyTotal').val(ready - 500);
    $('#couponTotalPrice').val($('#readyTotal').val());
    let limit = parseInt($('#couponLimit').val());
    let num = 1
    $('#couponLimit').val(limit += parseInt(num));
    if ($('#couponLimit').val() === "2"){
    $('.coupon0').hide();
    $('.coupon1').hide();
    $('.coupon2').hide();
    // console.log($('#couponSelectArray').val());
    }
  });
});

$(function(){
  $('.coupon1').click(function(){
    if ($('#couponLimit').val() === "0"){
    $('#couponSelectArray').val(parseInt($(this).val()));
    } else {
      $('#couponSelectArray2').val($(this).val());
    }
    $(this).hide();
    let ready = $('#readyTotal').val();
    $('#readyTotal').val(ready * 0.9);
    $('#couponTotalPrice').val($('#readyTotal').val());
    let limit = parseInt($('#couponLimit').val());
    let num = 1
    $('#couponLimit').val(limit += parseInt(num));
    if ($('#couponLimit').val() === "2"){
    $('.coupon0').hide();
    $('.coupon1').hide();
    $('.coupon2').hide();
    // console.log($('#couponSelectArray').val());
  }
  });
});

$(function(){
  $('.coupon0').click(function(){
    if ($('#couponLimit').val() === "0"){
    $('#couponSelectArray').val(parseInt($(this).val()));
    } else {
      $('#couponSelectArray2').val($(this).val());
    }
    $(this).hide();
    let ready = $('#readyTotal').val();
    $('#readyTotal').val(ready * 0.5);
    $('#couponTotalPrice').val($('#readyTotal').val());
    let limit = parseInt($('#couponLimit').val());
    let num = 1
    $('#couponLimit').val(limit += parseInt(num));
    if ($('#couponLimit').val() === "2"){
    $('.coupon0').hide();
    $('.coupon1').hide();
    $('.coupon2').hide();
  }
  });
});









