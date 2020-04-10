lady = Category.create(name:"レディース")

lady_tops = lady.children.create(name:"トップス")
lady_tops.children.create([{name:"Tシャツ/カットソー(半袖/袖なし)"}, {name:"Tシャツ/カットソー(七分/長袖)"},{name:"シャツ/ブラウス（半袖/袖なし）"},
                           {name:"シャツ/ブラウス（七分/長袖）"},{name:"ポロシャツ"},{name:"キャミソール"},{name:"タンクトップ"},{name:"ホルターネック"},
                           {name:"ニット/セーター"},{name:"チュニック"},{name:"カーディガン/ボレロ"},{name:"アンサンブル"},
                           {name:"ベスト/ジレ"},{name:"パーカー"},{name:"その他"}])

lady_jacket_outer = lady.children.create(name:"ジャケット/アウター")
lady_jacket_outer.children.create([{name:"テーラードジャケット"},{name:"ノーカラージャケット"},{name:"Gジャン/デニムジャケット"},{name:"レザージャケット"},
                                   {name:"ダウンジャケット"},{name:"ライダースジャケット"},{name:"ミリタリージャケット"},{name:"ダウンベスト"},{name:"ジャンパー/ブルゾン"},
                                   {name:"ポンチョ"},{name:"ロングコート"},{name:"トレンチコート"},{name:"ダッフルコート"},{name:"ピーコート"},{name:"チェスターコート"},
                                   {name:"モッズコート"},{name:"スタジャン"},{name:"毛布/ファーコート"},{name:"スプリングコート"},{name:"スカジャン"},{name:"その他"}])

lady_pants = lady.children.create(name:"パンツ")
lady_pants.children.create([{name:"デニム/ジーンズ"},{name:"ショートパンツ"},{name:"カジュアルパンツ"},{name:"ハーフパンツ"},{name:"チノパン"},{name:"ワークパンツ/カーゴパンツ"},
                            {name:"クロップドパンツ"},{name:"サロペット/オーバーオール"},{name:"オールインワン"},{name:"サルエルパンツ"},{name:"ガウチョパンツ"},{name:"その他"}])

lady_skirt = lady.children.create(name:"スカート")
lady_skirt.children.create([{name:"ミニスカート"},{name:"ひざ丈スカート"},{name:"ロングスカート"},{name:"キュロット"},{name:"その他"}])

lady_one_piece = lady.children.create(name:"ワンピース")
lady_one_piece.children.create([{name:"ミニワンピース"},{name:"ひざ丈ワンピース"},{name:"ロングワンピース"},{name:"その他"}])

lady_shoes = lady.children.create(name: "靴")
lady_shoes.children.create([{name:"ハイヒール/パンプス"},{name:"ブーツ"},{name:"サンダル"},{name:"スニーカー"},{name:"ミュール"},
                            {name:"モカシン"},{name:"ローファー/革靴"},{name:"フラットシューズ/バレエシューズ"},{name:"長靴/レインシューズ"},{name:"その他"}])

lady_roomwear_pajama = lady.children.create(name:"ルームウェア/パジャマ")
lady_roomwear_pajama.children.create([{name:"パジャマ"},{name:"ルームウェア"}])

lady_leg_wear = lady.children.create(name:"レッグウェア")
lady_leg_wear.children.create([{name:"ソックス"},{name:"スパッツ/レギンス"},{name:"ストッキング/タイツ"},{name:"レッグウォーマー"},{name:"その他"}])

lady_hat = lady.children.create(name:"帽子")
lady_hat.children.create([{name:"ニットキャップ/ビーニー"},{name:"ハット"},{name:"ハンチング/ベレー帽"},{name:"キャップ"},{name:"麦わら帽子"},{name:"その他"}])

lady_bag = lady.children.create(name:"バッグ")
lady_bag.children.create([{name:"ハンドバッグ"},{name:"トートバッグ"},{name:"エコバッグ"},{name:"リュック/バッグパック"},{name:"ボストンバッグ"},
                          {name:"スポーツバッグ"},{name:"ショルダーバッグ"},{name:"クラッチバッグ"},{name:"ポーチ/バニティ"},{name:"ボディバッグ/ウェストバッグ"},
                          {name:"マザーズバッグ"},{name:"メッセンジャーバッグ"},{name:"ビジネスバッグ"},{name:"旅行用バッグ/キャリーバッグ"},
                          {name:"ショップ袋"},{name:"和装用バッグ"},{name:"かごバッグ"},{name:"その他"}])

lady_accessory = lady.children.create(name:"アクセサリー")
lady_accessory.children.create([{name:"ネックレス"},{name:"ブレスレット"},{name:"ハングル/リストバンド"},{name:"リング"},{name:"ピアス(片耳用)"},
                                {name:"ピアス(両耳用)"},{name:"イアリング"},{name:"アンクレット"},{name:"ブローチ/コサージュ"},{name:"チャーム"},
                                {name:"その他"}]) 

lady_hair_accessary = lady.children.create(name:"ヘアーアクセサリー")
lady_hair_accessary.children.create([{name:"ヘアーゴム"},{name:"ヘアーバンド/カチューシャ"},{name:"ヘアピン"},{name:"その他"}])

lady_small_tool = lady.children.create(name:"小物")
lady_small_tool.children.create([{name:"長財布"},{name:"折り財布"},{name:"コインケース/小銭入れ"},{name:"名刺入れ/定期入れ"},
                                 {name:"キーケース"},{name:"キーホルダー"},{name:"手袋/アームカバー"},{name:"ハンカチ"},{name:"ベルト"},
                                 {name:"マフラー/ショール"},{name:"スルート/スヌード"},{name:"バンダナ/スカーフ"},{name:"ネックウォーマー"},
                                 {name:"サスペンダー"},{name:"サングラス/メガネ"},{name:"モバイルケース/カバー"},{name:"手帳"},
                                 {name:"イヤマフラー"},{name:"傘"},{name:"レインコート/ポンチョ"},{name:"ミラー"},{name:"タバコグッズ"},{name:"その他"}])

lady_watch = lady.children.create(name:"時計")
lady_watch.children.create([{name:"腕時計(アナログ)"},{name:"腕時計(デジタル)"},{name:"ラバーベルト"},{name:"レザーベルト"},{name:"金属ベルト"},{name:"その他"}])

lady_wig_exte = lady.children.create(name:"ウィッグ/エクステ")
lady_wig_exte.children.create([{name:"前髪ウィッグ"},{name:"ロングストレート"},{name:"ロングカール"},{name:"ショートストレート"},{name:"ショートカール"},{name:"その他"}])

lady_yukata_swimsuit = lady.children.create(name:"浴衣/水着")
lady_yukata_swimsuit.children.create([{name:"浴衣"},{name:"着物"},{name:"振袖"},{name:"長襦袢/半襦袢"},{name:"水着セパレート"},{name:"水着ワンピース"},
                                      {name:"水着スポーツ用"},{name:"その他"}])

lady_suits_formal_dress = lady.children.create(name:"スーツ/フォーマル/ドレス")
lady_suits_formal_dress.children.create([{name:"スカートスーツ上下"},{name:"パンツスーツ上下"},{name:"ドレス"},{name:"パーティーバッグ"},{name:"シューズ"},
                                         {name:"ウェディング"},{name:"その他"}])

lady_maternity = lady.children.create(name:"マタニティ")
lady_maternity.children.create([{name:"トップス"},{name:"アウター"},{name:"インナー"},{name:"ワンピース"},{name:"パンツ/スパッツ"},{name:"スカート"},
                                {name:"パジャマ"},{name:"授乳服"},{name:"その他"}])

lady_other = lady.children.create(name:"その他")
lady_other.children.create([{name:"コスプレ"},{name:"下着"},{name:"その他"}])



men = Category.create(name:"メンズ")

men_tops = men.children.create(name:"トップス")
men_tops.children.create([{name:"Tシャツ/カットソー(半袖/袖なし)"}, {name:"Tシャツ/カットソー(七分/長袖)"},{name:"シャツ"},
                          {name:"ポロシャツ"},{name:"タンクトップ"},{name:"ニット/セーター"},{name:"パーカー"},{name:"カーディガン"},{name:"スウェット"},
                          {name:"ジャージ"},{name:"ベスト"},{name:"その他"}])

men_jacket_outer = men.children.create(name:"ジャケット/アウター")
men_jacket_outer.children.create([{name:"テーラードジャケット"},{name:"ノーカラージャケット"},{name:"Gジャン/デニムジャケット"},{name:"レザージャケット"},
                                   {name:"ダウンジャケット"},{name:"ライダースジャケット"},{name:"ミリタリージャケット"},{name:"ナイロンジャケット"},{name:"フライトジャケット"},
                                   {name:"ダッフルコート"},{name:"ピーコート"},{name:"ステンカラーコート"},{name:"トレンチコート"},{name:"モッズコート"},{name:"チェスターコート"},
                                   {name:"スタジャン"},{name:"スカジャン"},{name:"ブルゾン"},{name:"マウンテンパーカー"},{name:"ダウンベスト"},{name:"ポンチョ"},
                                   {name:"カバーオール"},{name:"その他"}])

men_pants = men.children.create(name:"パンツ")
men_pants.children.create([{name:"デニム/ジーンズ"},{name:"ワークパンツ/カーゴパンツ"},{name:"スラックス"},{name:"チノパン"},{name:"ショートパンツ"},{name:"ペインターパンツ"},
                           {name:"サルエルパンツ"},{name:"オーバーオール"},{name:"その他"}])

men_shoes = men.children.create(name: "靴")
men_shoes.children.create([{name:"スニーカー"},{name:"サンダル"},{name:"ブーツ"},{name:"モカシン"},{name:"ドレス/ビジネス"},{name:"長靴/レインシューズ"},
                           {name:"デッキシューズ"},{name:"その他"}])

men_bag = men.children.create(name:"バッグ")
men_bag.children.create([{name:"ショルダーバッグ"},{name:"トートバッグ"},{name:"ボストンバッグ"},{name:"リュック/バッグパック"},{name:"ウエストポーチ"},{name:"ボディーバッグ"},
                         {name:"ドラムバッグ"},{name:"ビジネスバッグ"},{name:"トラベルバッグ"},{name:"メッセンジャーバッグ"},{name:"エコバッグ"},{name:"その他"}])

men_suits = men.children.create(name:"スーツ")
men_suits.children.create([{name:"スーツジャケット"},{name:"スーツベスト"},{name:"スラックス"},{name:"セットアップ"},{name:"その他"}])

men_hat = men.children.create(name:"帽子")
men_hat.children.create([{name:"キャップ"},{name:"ハット"},{name:"ニットキャップ/ビーニー"},{name:"ハンチング/ベレー帽"},{name:"キャスケット"},{name:"サンバイザー"},{name:"その他"}])

men_accessory = men.children.create(name:"アクセサリー")
men_accessory.children.create([{name:"ネックレス"},{name:"ブレスレット"},{name:"ハングル/リストバンド"},{name:"リング"},{name:"ピアス(片耳用)"},
                                {name:"ピアス(両耳用)"},{name:"アンクレット"},{name:"その他"}])

men_small_tool = men.children.create(name:"小物")
men_small_tool.children.create([{name:"長財布"},{name:"折り財布"},{name:"マネークリップ"},{name:"コインケース/小銭入れ"},{name:"名刺入れ/定期入れ"},
                                 {name:"キーケース"},{name:"キーホルダー"},{name:"ネクタイ"},{name:"手袋"},{name:"ハンカチ"},{name:"ベルト"},
                                 {name:"マフラー"},{name:"スルート"},{name:"バンダナ"},{name:"ネックウォーマー"},{name:"サスペンダー"},
                                 {name:"ウォレットチェーン"},{name:"サングラス/メガネ"},{name:"モバイルケース/カバー"},{name:"手帳"},{name:"ストラップ"},
                                 {name:"ネクタイピン"},{name:"カフリンクス"},{name:"イヤマフラー"},{name:"傘"},{name:"レインコート"},{name:"ミラー"},{name:"タバコグッズ"},{name:"その他"}])

men_watch = men.children.create(name:"時計")
men_watch.children.create([{name:"腕時計(アナログ)"},{name:"腕時計(デジタル)"},{name:"ラバーベルト"},{name:"レザーベルト"},{name:"金属ベルト"},{name:"その他"}])


men_swimsuit = men.children.create(name:"水着")
men_swimsuit.children.create([{name:"一般水着"},{name:"水着スポーツ用"},{name:"アクセサリー"},{name:"その他"}])

men_leg_wear = men.children.create(name:"レッグウェア")
men_leg_wear.children.create([{name:"ソックス"},{name:"レギンス/スパッツ"},{name:"レッグウォーマー"},{name:"その他"}])

men_under_wear = men.children.create(name:"アンダーウェア")
men_under_wear.children.create([{name:"トランクス"},{name:"ボクサーパンツ"},{name:"その他"}])

men_other = men.children.create(name:"その他")



baby_kids = Category.create(name:"ベビー・キッズ")

baby_kids_girl_95cm = baby_kids.children.create(name:"ベビー服(女の子用) ~95cm")
baby_kids_girl_95cm.children.create([{name:"トップス"},{name:"アウター"},{name:"パンツ"},{name:"スカート"},{name:"ワンピース"},{name:"ベビードレス"},{name:"おくるみ"},
                                     {name:"下着/肌着"},{name:"パジャマ"},{name:"ロンパース"},{name:"その他"}])

baby_kids_boy_95cm = baby_kids.children.create(name:"ベビー服(男の子用) ~95cm")
baby_kids_boy_95cm.children.create([{name:"トップス"},{name:"アウター"},{name:"パンツ"},{name:"おくるみ"},{name:"下着/肌着"},{name:"パジャマ"},{name:"ロンパース"},{name:"その他"}])

baby_kids_unisex_95cm = baby_kids.children.create(name:"ベビー服(男女兼用) ~95cm")
baby_kids_unisex_95cm.children.create([{name:"トップス"},{name:"アウター"},{name:"パンツ"},{name:"おくるみ"},{name:"下着/肌着"},{name:"パジャマ"},{name:"ロンパース"},{name:"その他"}])

baby_kids_girl_100cm = baby_kids.children.create(name:"キッズ服(女の子用) 100cm~")
baby_kids_girl_100cm.children.create([{name:"コート"},{name:"ジャケット/上着"},{name:"トップス(Tシャツ/カットソー)"},{name:"トップス(トレーナー)"},{name:"トップス(チュニック)"},{name:"トップス(タンクトップ)"},
                                      {name:"トップス(その他)"},{name:"スカート"},{name:"パンツ"},{name:"ワンピース"},{name:"セットアップ"},{name:"パジャマ"},{name:"フォーマル/ドレス"},{name:"和服"},
                                      {name:"浴衣"},{name:"甚平"},{name:"水着"},{name:"その他"}])

baby_kids_boy_100cm = baby_kids.children.create(name:"キッズ服(男の子用) 100cm~")
baby_kids_boy_100cm.children.create([{name:"コート"},{name:"ジャケット/上着"},{name:"トップス(Tシャツ/カットソー)"},{name:"トップス(トレーナー)"},{name:"トップス(その他)"},{name:"パンツ"},
                                     {name:"セットアップ"},{name:"パジャマ"},{name:"フォーマル/ドレス"},{name:"和服"},{name:"浴衣"},{name:"甚平"},{name:"水着"},{name:"その他"}])


baby_kids_unisex_100cm = baby_kids.children.create(name:"キッズ服(男女兼用) 100cm~")
baby_kids_unisex_100cm.children.create([{name:"コート"},{name:"ジャケット/上着"},{name:"トップス(Tシャツ/カットソー)"},{name:"トップス(トレーナー)"},{name:"トップス(その他)"},{name:"ボトムス"},{name:"パジャマ"},{name:"その他"}])

baby_kids_shoes = baby_kids.children.create(name:"キッズ靴")
baby_kids_shoes.children.create([{name:"スニカー"},{name:"サンダル"},{name:"ブーツ"},{name:"長靴"},{name:"その他"}])

baby_kids_small_tool = baby_kids.children.create(name:"子ども用ファッション小物")
baby_kids_small_tool.children.create([{name:"靴下/スパッツ"},{name:"帽子"},{name:"エプロン"},{name:"サスペンダー"},{name:"タイツ"},{name:"ハンカチ"},{name:"バンダナ"},{name:"ベルト"},{name:"マフラー"},
                                      {name:"傘"},{name:"手袋"},{name:"スタイ"},{name:"バッグ"},{name:"その他"}])

baby_kids_omutsu_toile_bath = baby_kids.children.create(name:"おむつ/トイレ/バス")
baby_kids_omutsu_toile_bath.children.create([{name:"おむつ用品"},{name:"おまる/補助便座"},{name:"トレーニングパンツ"},{name:"ベビーバス"},{name:"お風呂用品"},{name:"その他"}])

baby_kids_outing_goods = baby_kids.children.create(name:"外出/移動用品")
baby_kids_outing_goods.children.create([{name:"ベビーカー"},{name:"抱っこひも/スリング"},{name:"チャイルドシート"},{name:"その他"}])

baby_kids_eating = baby_kids_unisex_100cm.children.create(name:"授乳/食事")
baby_kids_eating.children.create([{name:"ミルク"},{name:"ベビーフード"},{name:"ベビー食品器"},{name:"その他"}])

baby_kids_tool = baby_kids.children.create(name:"ベビー家具/寝具/室内用品")
baby_kids_tool.children.create([{name:"ベット"},{name:"布団/毛布"},{name:"イス"},{name:"タンス"},{name:"その他"}])

baby_kids_toy = baby_kids.children.create(name:"おもちゃ")
baby_kids_toy.children.create([{name:"おふろのおもちゃ"},{name:"がらがら"},{name:"オルゴール"},{name:"ベビージム"},{name:"手押し車/カタカタ"},{name:"知育玩具"},{name:"その他"}])

baby_kids_event = baby_kids.children.create(name:"行事/記念品")
baby_kids_event.children.create([{name:"お宮参り用品"},{name:"お食い初め用品"},{name:"アルバム"},{name:"手形/足形"},{name:"その他"}])

baby_kids_other = baby_kids.children.create(name:"その他")
baby_kids.children.create([{name:"母子手帳用品"},{name:"その他"}])

interior = Category.create(name:"インテリア・住まい・小物")

interior_kitchen = interior.children.create(name:"キッチン")
interior_kitchen.children.create([{name:"食器"},{name:"調理器具"},{name:"収納/キッチン雑貨"},{name:"弁当用品"},{name:"カラトリー(スプーン等)"},{name:"テーブル用品"},
                                  {name:"容器"},{name:"エプロン"},{name:"アルコールグッズ"},{name:"浄水機"},{name:"その他"}])

interior_bed = interior.children.create(name:"ベッド/マットレス")
interior_bed.children.create([{name:"セミシングルベッド"},{name:"シングルベッド"},{name:"セミダブルベッド"},{name:"ダブルベッド"},{name:"ワイトダブルベッド"},
                              {name:"クイーンベッド"},{name:"キングベッド"},{name:"脚付きマットレスベット"},{name:"マットレス"},{name:"すのこベッド"},{name:"ロフトベッド/システムベッド"},
                              {name:"簡易ベッド/折りたたみベッド"},{name:"収納ベッド"},{name:"その他"}])

interior_sofa = interior.children.create(name:"ソファ/ソファベッド")
interior_sofa.children.create([{name:"ソファリセット"},{name:"シングルソファ"},{name:"ラブソファ"},{name:"トリプルソファ"},{name:"オットマン"},{name:"コーナーソファ"},
                               {name:"ビーズソファ/クッションソファ"},{name:"ローソファ/フロアソファ"},{name:"ソファベッド"},{name:"応援セット"},{name:"ソファカバー"},
                               {name:"リクライニングソファ"},{name:"その他"}])

interior_chair = interior.children.create(name:"椅子/チェア")
interior_chair.children.create([{name:"一般"},{name:"スツール"},{name:"ダイニングチェア"},{name:"ハイバックチェア"},{name:"ロッキングチェア"},{name:"座椅子"},{name:"折り畳み椅子"},
                                {name:"デスクチェア"},{name:"その他"}])

interior_table = interior.children.create(name:"机/テーブル")
interior_table.children.create([{name:"こたつ"},{name:"カウンターテーブル"},{name:"サイドテーブル"},{name:"センターテーブル"},{name:"ダイニングテーブル"},{name:"座卓/ちゃぶ台"},
                                {name:"アウトドア用"},{name:"パソコン用"},{name:"事務机/学習机"},{name:"その他"}])

interior_furniture = interior.children.create(name:"収納家具")
interior_furniture.children.create([{name:"リビング収納"},{name:"キッチン収納"},{name:"玄関/屋外収納"},{name:"バス1/トイレ収納"},{name:"本収納"},{name:"本/CD/DVD収納"},
                                               {name:"洋服タンス/押入れ収納"},{name:"電話台/ファックス台"},{name:"ドレッサー/鏡台"},{name:"棚/ラック"},{name:"ケース/ボックス"},{name:"その他"}])

interior_carpet = interior.children.create(name:"ラグ/カーペット/マット")
interior_carpet.children.create([{name:"ラグ"},{name:"カーペット"},{name:"ホットカーペット"},{name:"玄関/キッチンマット"},{name:"トイレ/バスマット"},{name:"その他"}])

interior_curtain = interior.children.create(name:"カーテン/１ブラインド")
interior_curtain.children.create([{name:"カーテン"},{name:"ブラインド"},{name:"ロールスクリーン"},{name:"のれん"},{name:"その他"}])

interior_light = interior.children.create(name:"ライト/照明")
interior_light.children.create([{name:"蛍光灯/電球"},{name:"天井照明"},{name:"フロアスタンド"},{name:"その他"}])

interior_bedding = interior.children.create(name:"寝具")
interior_bedding.children.create([{name:"布団/毛布"},{name:"枕"},{name:"シーツ/カバー"},{name:"その他"}])

interior_small_tool = interior.children.create(name:"インテリア小物")
interior_small_tool.children.create([{name:"ゴミ箱"},{name:"ウェルカムボード"},{name:"オルゴール"},{name:"クッション"},{name:"クッションカバー"},{name:"スリッパラック"},{name:"ティッシュボックス"},
                                     {name:"バケット/かごす"},{name:"フォトフレーム"},{name:"マガジンラック"},{name:"モビール"},{name:"花瓶"},{name:"灰皿"},{name:"傘立て"},{name:"小物入れ"},
                                     {name:"置時計"},{name:"掛時計/柱時計"},{name:"鏡(立て掛け式)"},{name:"鏡(壁掛け式)"},{name:"置物"},{name:"風鈴"},{name:"植物/観葉植物"},{name:"その他"}])

interior_event = interior.children.create(name:"季節/年間行事")
interior_event.children.create([{name:"正月"},{name:"成人式"},{name:"バレンタインデー"},{name:"ひな祭り"},{name:"こどもの日"},{name:"母の日"},{name:"父の日"},{name:"マザーギフト/お中元"},
                                {name:"夏/夏休み"},{name:"ハロウィン"},{name:"敬老の日"},{name:"七五三"},{name:"お歳暮"},{name:"クリスマス"},{name:"冬一般"},{name:"その他"}])

interior_other = interior.children.create(name:"その他")


book = Category.create(name:"本・音楽・ゲーム")

book_book = book.children.create(name:"本")
book_book.children.create([{name:"文学/小説"},{name:"人文/社会"},{name:"ノンフィクション/教養"},{name:"地図/旅行ガイド"},{name:"ビジネス/経済"},{name:"健康/医療"},{name:"コンピューター/IT"},
                           {name:"趣味/スポーツ/実用"},{name:"住まい/暮らし/子育て"},{name:"アート/エンタメ"},{name:"洋書"},{name:"絵本"},{name:"参考書"},{name:"その他"}])

book_comic = book.children.create(name:"漫画")
book_comic.children.create([{name:"全巻セット"},{name:"少年漫画"},{name:"少女漫画"},{name:"青年漫画"},{name:"女性漫画"},{name:"同人誌"},{name:"その他"}])

book_magazine = book.children.create(name:"雑誌")
book_magazine.children.create([{name:"アート/エンタメ/ホビー"},{name:"ファッション"},{name:"ニュース/総合"},{name:"趣味/スポーツ"},{name:"その他"}])

book_cd = book.children.create(name:"CD")
book_cd.children.create([{name:"邦楽"},{name:"洋楽"},{name:"アニメ"},{name:"クラシック"},{name:"K-POP/アジア"},{name:"キッズ/ファミリー"},{name:"その他"}])

book_dvd = book.children.create(name:"DVD/ブルーレイ")
book_dvd.children.create([{name:"外国映画"},{name:"日本映画"},{name:"アニメ"},{name:"TVドラマ"},{name:"ミュージック"},{name:"お笑い/バラエティ"},{name:"スポーツ/フィットネス"},
                          {name:"キッズ/ファミリー"},{name:"その他"}])

book_record = book.children.create(name:"レコード")
book_record.children.create([{name:"邦楽"},{name:"洋楽"},{name:"その他"}])

book_game = book.children.create(name:"テレビゲーム")
book_game.children.create([{name:"家庭用ゲーム本体"},{name:"家庭用ゲームソフト"},{name:"携帯用ゲーム本体"},{name:"携帯用ゲームソフト"},{name:"PCゲーム"},{name:"その他"}])


hobby = Category.create(name:"おもちゃ/ホビー/グッズ")

hobby_toy = hobby.children.create(name:"おもちゃ")
hobby_toy.children.create([{name:"キャラクターグッズ"},{name:"ぬいぐるみ"},{name:"小物/アクセサリー"},{name:"模型/プラモデル"},{name:"ミニカー"},{name:"トイラジコン"},
                           {name:"プラモデル"},{name:"ホビーラジコン"},{name:"鉄道模型"},{name:"その他"}])

hobby_talent_goods = hobby.children.create(name:"タレントグッズ")
hobby_talent_goods.children.create([{name:"アイドル"},{name:"ミュージシャン"},{name:"タレント/お笑い芸人"},{name:"スポーツ選手"},{name:"その他"}])

hobby_anime_goods = hobby.children.create(name:"コミック/アニメグッズ")
hobby_anime_goods.children.create([{name:"ストラップ"},{name:"キーホルダー"},{name:"バッジ"},{name:"カード"},{name:"クリアファイル"},{name:"ポスター"},{name:"タオル"},{name:"その他"}])

hobby_card = hobby.children.create(name:"トレーディングカード")
hobby_card.children.create([{name:"遊戯王"},{name:"マジック：ザ・ギャザリング"},{name:"ポケモンカード"},{name:"デュエルマスターズ"},{name:"バトルスピリッツ"},{name:"プリパラ"},
                            {name:"アイカツ"},{name:"カードファイト!!ヴァンガード"},{name:"ヴァイスシュヴァルツ"},{name:"プロ野球オーナーズリーグ"},{name:"ベースボールヒーローズ"},
                            {name:"ドラゴンボール"},{name:"スリーブ"},{name:"その他"}])

hobby_figure = hobby.children.create(name:"フィギュア")
hobby_figure.children.create([{name:"コミック/アニメ"},{name:"特撮"},{name:"ゲームキャラクター"},{name:"SF/ファンタジー/ホラー"},{name:"アメコミ"},{name:"スポーツ"},{name:"ミリタリー"},
                              {name:"その他"}])

hobby_music = hobby.children.create(name:"楽器/器材")
hobby_music.children.create([{name:"エレキギター"},{name:"アコースティックギター"},{name:"ベース"},{name:"エフェクター"},{name:"アンプ"},{name:"弦楽器"},{name:"管楽器"},{name:"鍵盤楽器"},
                             {name:"打楽器"},{name:"和楽器"},{name:"楽譜/スコア"},{name:"レコーディング/PA機器"},{name:"DJ機器"},{name:"DTM/DAW"},{name:"その他"}])

hobby_collection = hobby.children.create(name:"コレクション")
hobby_collection.children.create([{name:"武具"},{name:"使用済切手/官製はがき"},{name:"旧通貨/金貨/銀貨/記念硬貨"},{name:"印刷物"},{name:"ノベルティグッズ"},{name:"その他"}])

hobby_military = hobby.children.create(name:"ミリタリー")
hobby_military.children.create([{name:"トイガン"},{name:"個人装備"},{name:"その他"}])

hobby_art_good = hobby.children.create(name:"美術品")
hobby_art_good.children.create([{name:"陶芸"},{name:"ガラス"},{name:"漆芸"},{name:"金属工芸"},{name:"絵画/タペストリ"},{name:"版画"},{name:"彫刻/オブジェクト"},{name:"書"},
                           {name:"写真"},{name:"その他"}])

hobby_art_tool = hobby.children.create(name:"アート用品")
hobby_art_tool.children.create([{name:"画材"},{name:"額縁"},{name:"その他"}])

hobby_other = hobby.children.create(name:"その他")
hobby_other.children.create([{name:"トランプ/UNO"},{name:"カルタ/百人一首"},{name:"ダーツ"},{name:"ビリヤード"},{name:"麻雀"},{name:"パズル/ジグソーパズル"},{name:"囲碁/将棋"},
                             {name:"オセロ/チェス"},{name:"人生ゲーム"},{name:"野球/サッカーゲーム"},{name:"スポーツ"},{name:"三輪車/乗り物"},{name:"ヨーヨー"},{name:"模型製作用品"},
                             {name:"鉄道"},{name:"航空機"},{name:"アマチュア無線"},{name:"パチンコ/パチスロ"},{name:"その他"}])


cosmetic = Category.create(name:"コスメ・香水・美容")

cosmetic_base_make = cosmetic.children.create(name:"ベースメイク")
cosmetic_base_make.children.create([{name:"ファンデーション"},{name:"化粧下地"},{name:"コントロールカラー"},{name:"BBクリーム"},{name:"CCクリーム"},{name:"コンシーラー"},{name:"フェイスパウダー"},
                                    {name:"トライアルセット/サンプル"},{name:"その他"}])

cosmetic_makeup = cosmetic.children.create(name:"メイクアップ")
cosmetic_makeup.children.create([{name:"アイシャドウ"},{name:"口紅"},{name:"リップグロス"},{name:"リップライナー"},{name:"チーク"},{name:"フェイスカラー"},{name:"マスカラ"},{name:"アイライナー"},
                                 {name:"つけまつげ"},{name:"アイブロウペンシル"},{name:"パウダーアイブロウ"},{name:"眉マスカラ"},{name:"トライヤルセット/サンプル"},{name:"メイク道具/化粧小物"},
                                 {name:"美容用品/美容ローラー"},{name:"その他"}])

cosmetic_nail = cosmetic.children.create(name:"ネイルケア")
cosmetic_nail.children.create([{name:"ネイルカラー"},{name:"カラージェル"},{name:"ネイルベースコート/トップコート"},{name:"ネイルアート用品"},{name:"ネイルパーツ"},{name:"ネイルチップ/付け爪"},
                               {name:"手入れ用具"},{name:"除光液"},{name:"その他"}])

cosmetic_perfume = cosmetic.children.create(name:"香水")
cosmetic_perfume.children.create([{name:"香水(女性用)"},{name:"香水(男子用)"},{name:"ユニセックス"},{name:"ボディミスト"},{name:"その他"}])

cosmetic_skin_care = cosmetic.children.create(name:"スキンケア/基礎化粧品")
cosmetic_skin_care.children.create([{name:"化粧水/ローション"},{name:"乳液/ミルク"},{name:"美容液"},{name:"フェイスクリーム"},{name:"洗顔料"},{name:"クレンジング/メイク落とし"},{name:"パック/フェイスマスタ"},
                                    {name:"ジェル/ゲル"},{name:"ブースター/導入液"},{name:"アイケア"},{name:"リップケア"},{name:"トライアルセット/サンプル"},{name:"洗顔グッズ"},{name:"その他"}])

cosmetic_hair_care = cosmetic.children.create(name:"ヘアケア")
cosmetic_hair_care.children.create([{name:"シャンプー"},{name:"トリートメント"},{name:"コンディショナー"},{name:"リンス"},{name:"スタイリング剤"},{name:"カラー剤"},{name:"ブラシ"},{name:"その他"}])

cosmetic_body_care = cosmetic.children.create(name:"ボディケア")
cosmetic_body_care.children.create([{name:"オイル/クリーム"},{name:"ハンドクリーム"},{name:"ローション"},{name:"日焼け止め/サンオイル"},{name:"ボディソープ"},{name:"入浴剤"},{name:"制汗/デオドラント"},
                                    {name:"フットケア"},{name:"その他"}])

cosmetic_oral_care = cosmetic.children.create(name:"オーラルケア")
cosmetic_oral_care.children.create([{name:"口臭防止/エチケット用品"},{name:"歯ブラシ"},{name:"その他"}])

cosmetic_relaxation = cosmetic.children.create(name:"リラクゼーション")
cosmetic_relaxation.children.create([{name:"エッセンシャルオイル"},{name:"芳香器"},{name:"お香/香炉"},{name:"キャンドル"},{name:"リラクゼーショングッズ"},{name:"その他"}])

cosmetic_diet = cosmetic.children.create(name:"ダイエット")
cosmetic_diet.children.create([{name:"ダイエット食品"},{name:"エクササイズ食品"},{name:"体重計"},{name:"体脂肪計"},{name:"その他"}])

cosmetic_other = cosmetic.children.create(name:"その他")
cosmetic_other.children.create([{name:"健康用品"},{name:"看護/介護用品"},{name:"救急/衛生用品"},{name:"その他"}])


camera = Category.create(name:"家電・スマホ・カメラ")

camera_smart_phone = camera.children.create(name:"スマートフォン/携帯電話")
camera_smart_phone.children.create([{name:"スマートフォン本体"},{name:"バッテリー/充電器"},{name:"携帯電話本体"},{name:"PHS本体"},{name:"その他"}])

camera_smart_accesary = camera.children.create(name:"スマホアクセサリー")
camera_smart_accesary.children.create([{name:"Android用ケース"},{name:"iPhone用ケース"},{name:"カバー"},{name:"イヤホンジャック"},{name:"ストラップ"},{name:"フィルム"},
                                       {name:"自撮り棒"},{name:"その他"}])

camera_pc_tablet = camera.children.create(name:"PC/タブレット")
camera_pc_tablet.children.create([{name:"タブレット"},{name:"ノートPC"},{name:"デスクトップ型PC"},{name:"ディスプレイ"},{name:"電子ブックリーダー"},{name:"PC周辺機器"},
                                  {name:"PCパーツ"},{name:"その他"}])

camera_camera = camera.children.create(name:"カメラ")
camera_camera.children.create([{name:"デジタルカメラ"},{name:"ビデオカメラ"},{name:"レンズ(単焦点)"},{name:"レンズ(ズーム)"},{name:"フィルムカメラ"},{name:"防犯カメラ"},{name:"その他"}])

camera_television = camera.children.create(name:"テレビ/映像機器")
camera_television.children.create([{name:"テレビ"},{name:"プロジェクター"},{name:"ブルーレイレコード"},{name:"DVDレコーダー"},{name:"ブルーレイプレイヤー"},{name:"DVDプレイヤー"},
                                   {name:"映像用ケーブル"},{name:"その他"}])

camera_audio = camera.children.create(name:"オーディオ機器")
camera_audio.children.create([{name:"ポータブルプレイヤー"},{name:"イヤフォン"},{name:"ヘッドフォン"},{name:"アンプ"},{name:"スピーカー"},{name:"ケーブル/シールド"},{name:"ラジオ"},{name:"その他"}])

camera_beauty = camera.children.create(name:"美容/健康")
camera_beauty.children.create([{name:"ヘアドライヤー"},{name:"ヘアアイロン"},{name:"美容機器"},{name:"電気シェーバー"},{name:"電動歯ブラシ"},{name:"その他"}])

camera_air_condition = camera.children.create(name:"冷暖房/空調")
camera_air_condition.children.create([{name:"エアコン"},{name:"空気清浄器"},{name:"加湿器"},{name:"扇風機"},{name:"除湿機"},{name:"ファンヒーター"},{name:"電気ヒーター"},{name:"オイルヒーター"},
                                      {name:"ストーブ"},{name:"ホットカーペット"},{name:"こたつ"},{name:"電気毛布"},{name:"その他"}])

camera_life_tool = camera.children.create(name:"生活家電")
camera_life_tool.children.create([{name:"冷蔵庫"},{name:"洗濯機"},{name:"炊飯器"},{name:"電子レンジ/オーブン"},{name:"調理機器"},{name:"アイロン"},{name:"掃除機"},{name:"エスプレッソマシン"},
                                  {name:"コーヒーメーカー"},{name:"衣類乾燥機"},{name:"その他"}])

camera_other = camera.children.create(name:"その他")


sports = Category.create(name:"スポーツ・レジャー")

sports_golf = sports.children.create(name:"ゴルフ")
sports_golf.children.create([{name:"クラブ"},{name:"ウエア(男性用)"},{name:"ウエア(女性用)"},{name:"バッグ"},{name:"シューズ(男性用)"},{name:"シューズ(女性用)"},{name:"アクセサリー"},{name:"その他"}])

sports_fishing = sports.children.create(name:"フィッシング")
sports_fishing.children.create([{name:"ロッド"},{name:"リール"},{name:"ルアー用品"},{name:"ウエア"},{name:"釣り糸/ライン"},{name:"その他"}])

sports_bike = sports.children.create(name:"自転車")
sports_bike.children.create([{name:"自転車本体"},{name:"ウエア"},{name:"パーツ"},{name:"アクセサリー"},{name:"バッグ"},{name:"工具/メンテナンス"},{name:"その他"}])

sports_training = sports.children.create(name:"トレーニング/エクササイズ")
sports_training.children.create([{name:"ランニング"},{name:"ウォーキング"},{name:"ヨガ"},{name:"トレーニング用品"},{name:"その他"}])

sports_baseball = sports.children.create(name:"野球")
sports_baseball.children.create([{name:"ウェア"},{name:"シューズ"},{name:"グローブ"},{name:"バット"},{name:"アクセサリー"},{name:"防具"},{name:"練習機器"},{name:"記念グッズ"},
                                 {name:"応援グッズ"},{name:"その他"}])

sports_soccer = sports.children.create(name:"サッカー/フットサル")
sports_baseball.children.create([{name:"ウェア"},{name:"シューズ"},{name:"ボール"},{name:"アクセサリー"},{name:"記念グッズ"},{name:"応援グッズ"},{name:"その他"}])

sports_tennis = sports.children.create([{name:"ラケット(硬式用)"},{name:"ラケット(軟式用)"},{name:"ウェア"},{name:"シューズ"},{name:"ボール"},{name:"アクセサリー"},{name:"記念グッズ"},
                                        {name:"応援グッズ"},{name:"その他"}])

sports_snow_board = sports.children.create(name:"スノーボード")
sports_snow_board.children.create([{name:"ボード"},{name:"バインディング"},{name:"ブーツ(男子用)"},{name:"ブーツ(女性用)"},{name:"ブーツ(子ども用)"},{name:"ウエア/装備(男性用)"},
                                   {name:"ウエア/装備(女性用)"},{name:"ウエア/装備(子ども用)"},{name:"アクセサリー"},{name:"バッグ"},{name:"その他"}])

sports_ski = sports.children.create(name:"スノーボード")
sports_ski.children.create([{name:"板"},{name:"ブーツ(男子用)"},{name:"ブーツ(女性用)"},{name:"ブーツ(子ども用)"},{name:"ビンティング"},{name:"ウエア(男性用)"},{name:"ウエア(女性用)"},
                            {name:"ウエア(子ども用)"},{name:"ストック"},{name:"その他"}])

sports_other_sports = sports.children.create(name:"その他スポーツ")
sports_other_sports.children.create([{name:"ダンス/バレエ"},{name:"サーフィン"},{name:"バスケットボール"},{name:"バトミントン"},{name:"バレーボール"},{name:"スケートボード"},{name:"陸上競技"},{name:"ラグビー"},
                                     {name:"アメリカンフットボール"},{name:"ボクシング"},{name:"ボウリング"},{name:"その他"}])

sports_outdoor = sports.children.create(name:"アウトドア")
sports_outdoor.children.create([{name:"テント/タープ"},{name:"ライト/ランタン"},{name:"寝袋/寝具"},{name:"テーブル/チェア"},{name:"ストーブ/コンロ"},{name:"調理器具"},{name:"食器"},
                                {name:"登山用品"},{name:"その他"}])

sports_other = sports.children.create(name:"その他")
sports_other.children.create([{name:"旅行用品"},{name:"その他"}])


hand_made = Category.create(name:"ハンドメイド")

hand_made_accessary = hand_made.children.create(name:"アクセサリー(女性用)")
hand_made_accessary.children.create([{name:"ピアス"},{name:"イヤリング"},{name:"ネックレス"},{name:"ブレスレット"},{name:"リング"},{name:"チャーム"},
                                     {name:"ヘアゴム"},{name:"アンクレット"},{name:"その他"}])

hand_made_fashion = hand_made.children.create(name:"ファッション/小物")
hand_made_fashion.children.create([{name:"バッグ(女性用)"},{name:"バッグ(男性用)"},{name:"財布(女性用)"},{name:"財布(男性用)"},{name:"ファッション雑貨"},{name:"その他"}])

hand_made_watch = hand_made.children.create(name:"アクセサリー/時計")
hand_made_watch.children.create([{name:"アクセサリー(男性用)"},{name:"時計(女性用)"},{name:"時計(男性用)"},{name:"その他"}])

hand_made_dairy_good = hand_made.children.create(name:"日用品/インテリア")
hand_made_dairy_good.children.create([{name:"キッチン用品"},{name:"家具"},{name:"文房具"},{name:"アート/写真"},{name:"アロマ/キャンドル"},{name:"フラワー/ガーデン"},{name:"その他"}])

hand_made_hobby = hand_made.children.create(name:"趣味/おもちゃ")
hand_made_hobby.children.create([{name:"クラフト/布製品"},{name:"おもちゃ/人形"},{name:"その他"}])

hand_made_kids = hand_made.children.create(name:"キッズ/ベビー")
hand_made_kids.children.create([{name:"ファッション雑貨"},{name:"スタイ/よだれかけ"},{name:"外出用品"},{name:"ネームタグ"},{name:"その他"}])

hand_made_material = hand_made.children.create(name:"素材/材料")
hand_made_material.children.create([{name:"各種パーツ"},{name:"生地/糸"},{name:"型紙/パターン"},{name:"その他"}])

hand_made_secondry = hand_made.children.create(name:"二次創作物")
hand_made_secondry.children.create([{name:"ingress"},{name:"クリエイターズ宇宙兄弟"}])

hand_made_other = hand_made.children.create(name:"その他")


ticket = Category.create(name:"チケット")

ticket_music = ticket.children.create(name:"音楽")
ticket_music.children.create([{name:"男性アイドル"},{name:"女性アイドル"},{name:"韓流"},{name:"国内アーティスト"},{name:"海外アーティスト"},{name:"音楽フェス"},{name:"声優/アニメ"},
                              {name:"その他"}])

ticket_sports = ticket.children.create(name:"スポーツ")
ticket_sports.children.create([{name:"サッカー"},{name:"野球"},{name:"テニス"},{name:"格闘技/プロレス"},{name:"相撲/武道"},{name:"ゴルフ"},{name:"バレーボール"},{name:"バスケットボール"},
                               {name:"モーターボール"},{name:"ウィンタースポーツ"},{name:"その他"}])

ticket_theater = ticket.children.create(name:"演劇/芸能")
ticket_theater.children.create([{name:"ミュージカル"},{name:"演劇"},{name:"伝統芸能"},{name:"落語"},{name:"お笑い"},{name:"オペラ"},{name:"サーカス"},{name:"バレエ"},{name:"その他"}])

tikcet_event = ticket.children.create(name:"イベント")
tikcet_event.children.create([{name:"声優/アニメ"},{name:"キッズ/ファミリー"},{name:"トークショー/講演会"},{name:"その他"}])

ticket_movie = ticket.children.create(name:"映画")
ticket_movie.children.create([{name:"邦画"},{name:"洋画"},{name:"その他"}])

ticket_facility = ticket.children.create(name:"施設利用権")
ticket_facility.children.create([{name:"遊園地/テーマパーク"},{name:"美術館/博物館"},{name:"スキー場"},{name:"ゴルフ場"},{name:"フィットネスクラブ"},{name:"プール"},{name:"ボウリング場"},
                                 {name:"水族館"},{name:"動物園"},{name:"その他"}])

ticket_discount = ticket.children.create(name:"優待券/割引券")
ticket_discount.children.create([{name:"ショッピング"},{name:"レストラン/食事券"},{name:"フード/ドリンク券"},{name:"宿泊券"},{name:"その他"}])

ticket_other = ticket.children.create(name:"その他")


bike = Category.create(name:"自転車・オートバイ")

bike_bike = bike.children.create(name:"自転車本体")
bike.children.create([{name:"国内自転車本体"},{name:"外国自転車"}])

bike_tire = bike.children.create(name:"自転車タイヤ/ホイール")
bike_tire.children.create([{name:"タイヤ/ホイールセット"},{name:"タイヤ"},{name:"ホイール"},{name:"その他"}])

bike_parts = bike.children.create(name:"自転車パーツ")
bike_parts.children.create([{name:"サスペンション"},{name:"ブレーキ"},{name:"外装/エアロパーツ"},{name:"ライト"},{name:"内装品、シート"},{name:"ステアリング"},{name:"マフラー・排気系"},
                            {name:"エンジン、過給機、冷却装置"},{name:"クラッチ、ミッション、駆動系"},{name:"電装品"},{name:"補給パーツ"},{name:"凡用パーツ"},{name:"外国自動車用パーツ"},{name:"その他"}])

bike_accessary = bike.children.create(name:"自転車アクセサリー")
bike_accessary.children.create([{name:"車内アクセサリー"},{name:"カーナビ"},{name:"カーオーディオ"},{name:"車外アクセサリー"},{name:"メンテナンス用品"},{name:"チャイルドシート"},{name:"ドライブレコーダー"},
                                {name:"レーダー探知機"},{name:"カタログ/マニュアル"},{name:"セキュリティ"},{name:"ETC"},{name:"その他"}])

bike_autobike = bike.children.create(name:"オートバイ車体")

bike_autobike_parts = bike.children.create(name:"オートバイパーツ")
bike_autobike_parts.children.create([{name:"タイヤ"},{name:"マフラー"},{name:"エンジン、冷却装置"},{name:"カウル、フェンダー、外装"},{name:"サスペンション"},{name:"ホイール"},{name:"シート"},
                                     {name:"ブレーキ"},{name:"タンク"},{name:"ライト、ウィンカー"},{name:"チェーン、スプロケット、駆動系"},{name:"メーター"},{name:"電装系"},{name:"ミラー"},
                                     {name:"外国オートバイ用パーツ"},{name:"その他"}])

bike_autobike_accessary = bike.children.create(name:"オートバイアクセサリー")
bike_autobike_accessary.children.create([{name:"ヘルメット/シールド"},{name:"バイクウエア/装備"},{name:"アクセサリー"},{name:"メンテナンス"},{name:"カタログ/マニュアル"},{name:"その他"}])


other = Category.create(name:"その他")

other_collect_sale = other.children.create(name:"その他")

other_pet = other.children.create(name:"ペット用品")
other_pet.children.create([{name:"ペットフード"},{name:"犬用品"},{name:"猫用品"},{name:"魚用品/水草"},{name:"小動物用品"},{name:"爬虫類/両生類"},{name:"かご/おり"},{name:"鳥用品"},
                           {name:"虫類用品"},{name:"その他"}])
                          
other_food = other.children.create(name:"食品")
other_food.children.create([{name:"菓子"},{name:"米"},{name:"野菜"},{name:"果物"},{name:"調味料"},{name:"魚介類(加工食品)"},{name:"肉類(加工食品)"},{name:"その他 加工食品"},{name:"その他"}])

other_drink = other.children.create(name:"飲料/酒")
other_drink.children.create([{name:"コーヒー"},{name:"ソフトドリンク"},{name:"ミネラルウォーター"},{name:"茶"},{name:"ウイスキー"},{name:"ワイン"},{name:"ブランデー"},{name:"焼酎"},{name:"日本酒"},{name:"ビール、発泡酒"},{name:"その他"}])

other_daily_goods = other.children.create(name:"日用品/雑貨/旅行")
other_daily_goods.children.create([{name:"タオル/バス用品"},{name:"日用品/生活雑貨"},{name:"洗剤/柔軟剤"},{name:"旅行用品"},{name:"防災関連グッズ"},{name:"その他"}])

other_antique = other.children.create(name:"アンティーク/コレクション")
other_antique.children.create([{name:"雑貨"},{name:"工芸品"},{name:"家具"},{name:"印刷物"},{name:"その他"}])

other_stationery = other.children.create(name:"文房具/事務用品")
other_stationery.children.create([{name:"オフィス用品一般"},{name:"オフィス家具"},{name:"店舗用品"},{name:"OA機器"},{name:"ラッピング/包装"},{name:"その他"}])

other_other = other.children.create(name:"その他")