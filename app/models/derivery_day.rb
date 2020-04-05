
class DeriveryDay < ActiveHash::Base
  self.data = [
    {id: 1, derivery_day: '1~2日で発送'}, {id: 2, derivery_day: '2~3日で発送'},
    {id: 3, derivery_day: '4~7日で発送'}
  ]

end