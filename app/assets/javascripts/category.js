$(function(){
  function selected_category(category){
    var html = `<option value="${category.id}" data-category="${category.id}">${category.name}</option>`;
    return html;
  }

  function selected_size(size){
    var html =`<option value="${size.id}">${size.size}</option>`;
    return html;
  }

  function childrenGroup(categories){
    var choiseChild = ''
    choiseChild = `<div class='category-select-wrapper__add' id= 'children_wrapper' >
                      <div class='category-select-wrapper__box'>
                        <select class='category-select-wrapper__box--select' id= "child-category" name='category_id'>
                          <option value="---" data-category="---">選択して下さい</option>
                          ${categories}
                        </select>
                      </div>
                    </div>`;
    $('.product-detail-info__category').append(choiseChild);
  }

  function grandChildrenGroup(categories){
    var choiseGrandChild = ''
    choiseGrandChild = `<div class='category-select-wrapper__add' id= 'grandchildren_wrapper' >
                          <div class='category-select-wrapper__box'>
                            <select class='category-select-wrapper__box--select' id="grandchild-category" name='category_id'>
                              <option value"---" data-category="---">選択して下さい</option>
                              ${categories}
                            </select>
                            <i class='fas fa-chevron-down listing-select-wrapper__box--arrow-down'></i>
                          </div>
                        </div>`;
    $('.product-detail-info__category').append(choiseGrandChild);                
  }

  function sizeGroup(sizes){
    var choiseSize = '';
    choiseSize = `<div class="product-detail-info__category" id= 'size_wrapper'>
                    <label class="size_iabel" for="サイズ">サイズ</label>
                    <span class='attention'>必須</span>
                    <div class='size-select-wrapper'>
                      <div class='size_select-wrapper__box'>
                        <select class="category-select-wrapper__box__select" id="size" name="size_id>
                          <option value="---">---</option>
                          ${sizes}
                        <select>
                        <i class='fas fa-chevron-down listing-select-wrapper__box--arrow-down'></i>
                      </div>
                    </div>
                  </div>`;
    $('.product-detail-info__category').append(choiseSize);
  }

  

  $('#parent_category').on('change', function(){
    var parentCategory = document.getElementById('parent_category').value;
    if (parentCategory != "選択して下さい"){
      $.ajax({
        type: 'GET',
        url: '/products/get_category_children',
        data: { parent_name: parentCategory} ,
        dataType: 'json'
      })
      .done(function(children){
        $('#children_wrapper').remove();
        $('#grandchildren_wrapper').remove();
        $('#size_wrapper').remove();
        var insertHTML = '';
        children.forEach(function(child){
          insertHTML += selected_category(child);
        });
        childrenGroup(insertHTML);
      })
      .fail(function(){
        alert('カテゴリー取得に失敗しました');
      })
    }else{
      $('#children_wrapper').remove(); 
      $('#grandchildren_wrapper').remove();
      $('#size_wrapper').remove();
      $('#brand_wrapper').remove();
    }
  });
  $('.product-detail-info__category').on('change', '#child-category', function(){
    var childId = $('#child-category option:selected').data('category');
    if (childId != "---"){
      $.ajax({
        type: 'GET',
        url: '/products/get_category_grandchildren',
        data: {child_id: childId },
        dataType: 'json'
      })
      .done(function(grandchildren){
        if (grandchildren.length != 0) {
          $('#grandchildren_wrapper').remove();
          $('#size_wrapper').remove();
          var insertHTML = '';
          grandchildren.forEach(function(grandchild){
            insertHTML += selected_category(grandchild)
          })
          grandChildrenGroup(insertHTML);
        }
      })
      .fail(function(){
        alert('カテゴリーに取得に失敗しました');
      })
    }else{
      $('#grandchildren_wrapper').remove(); 
      $('#size_wrapper').remove();
    }
  });
  $('.product-detail-info__category').on('change', '#grandchild-category', function(){
    var GrandChildId = $('#grandchild-category option:selected').data('category');
    if(GrandChildId != "---"){
      $.ajax({
        type: 'GET',
        url: '/products/get_size',
        data: {grandchild_id: GrandChildId},
        dataType: 'json'
      })
      .done(function(sizes){
        $('#size_wrapper').remove();
        if(sizes != 0){
          var insertHTML = '';
          sizes.forEach(function(size){
            insertHTML += selected_size(size);
          });
          sizeGroup(insertHTML);
        }
      })
      .fail(function(){
        alert('サイズの取得に失敗しました');
      })
    }else{
      $('#size_wrapper').remove();
    }
  })
});