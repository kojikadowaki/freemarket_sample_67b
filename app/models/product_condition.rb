class ProductCondition < ActiveHash::Base
  self.data = [
    {id: 1, product_condition: '新品、未使用'}, {id: 2, product_condition: '未使用に近い'}, {id: 3, product_condition: '目立った傷や汚れなし'}, 
    {id: 4, product_condition: 'やや傷や汚れあり'}, {id: 5, product_condition: '傷や汚れあり'}, {id: 6, product_condition: '全体的に状態が悪い'}
  ]
end
