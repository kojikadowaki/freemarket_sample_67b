$(document).on('turbolinks:load', ()=> {
  let buildFieldField = (index)=> {
    let html = `<div data-index="${index}" class="js-file_group">
                    <input class="js-file" type="file"
                    name="product[images_attributes][${index}][url]"
                    id="product_images_attributes_${index}_url"><br>
                    <button type="button" class="js-remove">削除</button>
                  </div>`;
    return html;
  }

  let buildImage = (index,url)=> {
    let html = `<img data-index="${index}" src="${url}" width="100px" height="100px"><br>`;
    return html;
  }
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];

  $('#image-box').on('change', `input[type="file"]`, function(e){
    let targetIndex = $(this).parent().data('index');
    let file = e.target.files[0];
    let urlObject = window.URL.createObjectURL(file);

    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
      img.setAttribute('src', urlObject);
    }else{
      $('#previews').append(buildImage(targetIndex, urlObject));
      $('#image-box').append(buildFieldField(fileIndex[0]))
      fileIndex.shift();
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    }
  });

  $('#image-box').on('click', '.js-remove', function(){
    let targetIndex = $(this).parent().data('index');
    $(this).parent().remove();
    $(`img[data-index="${targetIndex}"]`).remove();
    if ($('.js-file').length == 0) $('#image-box').append(buildFieldField(fileIndex[0]));
  });

  
});

