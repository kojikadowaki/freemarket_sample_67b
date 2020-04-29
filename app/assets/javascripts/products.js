$(function() {
  let buildFieldField = (index)=> {
    let html = `<div data-index="${index}" class="js-file_group">
                  <input class="js-file" type="file"
                  name="product[product_images_attributes][${index}][url]"
                  id="product_product_images_attributes_${index}_url"><br>
                </div>`;
    return html;
  }

  let buildImage = (index,url)=> {
    let html = `<div class="img-preview">
                  <img data-index="${index}" src="${url}" width="122px" height="110px">
                  <div class="js-remove">削除</div>
                </div>`;
    return html;
  }

  let addImageBox = `<div class="input-box__image__wrapper"></div>`
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];


  $('#img-fields').on("click",".fa-camera", function(){
    let file_field = $(".js-file").last();
    file_field.trigger("click");
  });

  $('#image-box').on('change', `input[type="file"]`, function(e){
    let targetIndex = $(this).parent().data('index');
    let file = e.target.files[0];
    let urlObject = window.URL.createObjectURL(file);

    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
      img.setAttribute('src', urlObject);
    }else{
      $('.input-box__image__wrapper').append(buildImage(targetIndex, urlObject));
      $('.input-box__form').append(buildFieldField(fileIndex[0]))
      fileIndex.shift();
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    }
    if ($('.js-file_group').length == 7 ){
      $('.input-box__image').append(addImageBox)
    }

    if ($('.js-file_group').length == 11){
      $('.img-btn').remove();
    }
  });
  
  $(document).on('click', '.js-remove', function(){
    let targetIndex = $(this).prev().data('index');
    $(this).parent().remove();
    $(`#product_product_images_attributes_${targetIndex}_url`).remove();
    if ($('.js-file').length == 0) $('#image-box').append(buildFieldField(fileIndex[0]));
  });
});

