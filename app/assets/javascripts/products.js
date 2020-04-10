$(document).on('turbolinks:load', ()=> {
  const buildFieldField = (index)=> {
    const html = `<div data-index="${index}" class="js-file_group">
                    <input class="js-file" type="file"
                    name="product[images_attributes][${index}][url]"
                    id="product_images_attributes_${index}_url"><br>
                    <div class="js-remove">削除</div>
                  </div>`;
    return html;
  }
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];

  $('#image-box').on('change', 'js-file', function(e){
    $('image-box').append(buildFieldField(fileIndex[0]));
    fileIndex.shift();
    fileIndex.push(fileIndex[fileIndex.length - 1] + 1)
  });

  $('image-box').on('click', 'js-remove', function(){
    $(this).parent().remove();
    if ($('.js-file').length == 0) $('image-box').append(buildFieldField(fileIndex[0]));
  });

});
