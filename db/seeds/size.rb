clothe_size_array = ['XXS以下', 'XS(SS)', 'S', 'M', 'L', 'XL(LL)', '2XL(3L)', '3XL(4L)', '4XL(5L)以上', 'FREE SIZE']
clothe = Size.create(size: '洋服のサイズ')
clothe_size_array.each do |size|
  child = clothe.children.create(size: size)
end

women_shoes_size_array = ['20cm以下', '20.5cm', '21cm', '21.5cm', '22cm', '22.5cm', '23cm', '23.5cm', '24cm', '24.5cm', '25cm', '25.5cm','26cm', '26.5cm', '27cm', '27.5cm以上']
shoes = Size.create(size: '靴のサイズ(女)')
women_shoes_size_array.each do |size|
  child = shoes.children.create(size: size)
end

man_shoes_size_array = ['23.5cm以下', '24cm', '24.5cm', '25cm', '25.5cm','26cm', '26.5cm', '27cm', '27.5cm', '28cm', '28.5cm以上', '29cm', '29.5cm', '30cm', '30.5cm', '31cm以上']
shoes = Size.create(size: '靴のサイズ(男)')
man_shoes_size_array.each do |size|
  child = shoes.children.create(size: size)
end

kids_small_array = ['60cm', '70cm', '80cm', '90cm', '95cm']
kids_small = Size.create(size: '子供服(小)サイズ')
kids_small_array.each do |size|
  child = kids_small.children.create(size: size)
end

kids_big_array = ['100cm', '110cm', '120cm', '130cm', '140cm', '150cm', '160cm']
kids_big = Size.create(size: '子供服(大)サイズ')
kids_big_array.each do |size|
  child = kids_big.children.create(size: size)
end
kids_shoes_array = ['10.5cm以下', '11cm・11.5cm', '12cm・12.5cm', '13cm・13.5cm', '14cm・14.5cm', '15cm・15.5cm', '16cm・16.5cm', '17cm以上']
kids_shoes = Size.create(size: '子供靴のサイズ')
kids_shoes_array.each do |size|
  child = kids_shoes.children.create(size: size)
end