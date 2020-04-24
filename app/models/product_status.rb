class ProductStatus < ActiveHash::Base
  self.data = [
    {id: 1, status: '出品中'},{id: 2, status: '売却済'}
  ]
end
