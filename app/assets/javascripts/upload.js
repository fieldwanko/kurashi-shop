$(document).on("change","#AddImage",function(event){
  // let fileCount = event.target.files.length;
  // let imageTag = `<%= image_tag "",id: "upPreview#{}",style:"height: 100%;width:100px" %>`
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