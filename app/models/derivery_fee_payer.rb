class DeriveryFeePayer < ActiveHash::Base
  self.data = [
    {id: 1, derivery_fee_payer: '送料込み(出品者負担)'}, {id: 2, derivery_fee_payer: '着払い(購入者負担)'}
  ]
end