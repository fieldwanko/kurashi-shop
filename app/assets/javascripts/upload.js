$(document).on("change","#AddImage",function(event){
  let reader;
  if (event.target.files.length){
    reader = new FileReader;
    reader.onload = function(event){
      let productUpPreview;
      productUpPreview = document.getElementById("upPreview");
      $("#productPreviewImg").addClass("is-active");
      productUpPreview.setAttribute("src",event.target.result);

      $('#upPreview').attr("src",event.target.result)
    };
    return reader.readAsDataURL(event.target.files[0]);
  }
});

$(document).on("change","#moreAddImage",function(event){
  let reader;
  if (event.target.files.length){
    reader = new FileReader;
    reader.onload = function(event){
      let productUpPreview;
      productUpPreview = document.getElementById("upPreview");
      $("#addUpPreview").addClass("is-active");
      productUpPreview.setAttribute("src",event.target.result);

      $('#addUpPreview').attr("src",event.target.result)
    };
    return reader.readAsDataURL(event.target.files[0]);
  }
});

$(function(){
  $('#cart_quantity').change(function(){
    $('#changeForm').fadeIn();
  });
});