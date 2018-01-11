drop database if exists shop;
create database shop character set utf8;
use shop;

create table user_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(128) unique key not null comment "ユーザーID",
password varchar(16) not null comment "パスワード",
family_name varchar(32) not null comment "姓",
first_name varchar(32) not null comment"名",
sex tinyint not null default 0 comment "性別",
email varchar(32) not null comment "メールアドレス",
status tinyint not null default 1 comment "ステータス",
logined tinyint not null default 0 comment "ログインフラグ",
insert_date datetime not null comment "登録日",
update_date datetime comment "更新日"
) comment "会員情報テーブル";

insert into user_info(user_id,password,family_name,first_name,sex,email,insert_date)
values("m","m","小林","陽","1","soleil.04k@gmail.com",now());

create table master_category(
id int primary key not null auto_increment comment "ID",
category_id int unique key not null comment "カテゴリID",
category_name varchar(20) unique key not null comment "カテゴリ名",
insert_date datetime not null comment "登録日",
update_date datetime comment "更新日"
) comment "カテゴリマスタテーブル";

insert into master_category values
(1,2,"OUTERS",cast('2018-01-08' as date),cast('2018-01-08' as date)),
(2,3,"TOPS",cast('2018-01-08' as date),cast('2018-01-08' as date)),
(3,4,"BOTTOMS",cast('2018-01-08' as date),cast('2018-01-08' as date)),
(4,5,"DRESSES",cast('2018-01-08' as date),cast('2018-01-08' as date)),
(5,6,"SHOES",cast('2018-01-08' as date),cast('2018-01-08' as date)),
(6,7,"ACCESSORIES",cast('2018-01-08' as date),cast('2018-01-08' as date)),
(7,8,"GOODS",cast('2018-01-08' as date),cast('2018-01-08' as date));

create table product_info(
id int primary key not null auto_increment comment "ID",
product_id int unique key not null comment "商品ID",
product_name varchar(100) unique key not null comment "商品名",
product_description varchar(255) not null comment "商品詳細",
category_id int not null comment "カテゴリID",
price int comment "価格",
stock int comment "在庫",
image_file_path varchar(100) comment "画像ファイルパス",
image_file_name varchar(50) comment "画像ファイル名",
release_date datetime not null comment "発売年月",
release_company varchar(50) comment "発売会社",
status tinyint not null default 1 comment "ステータス",
insert_date datetime not null comment "登録日",
update_date datetime comment "更新日",
foreign key(category_id) references master_category(category_id) on update cascade
) comment "商品情報テーブル";

insert into product_info (id, product_id, product_name, product_description, category_id, price, stock, image_file_path, image_file_name, release_date, release_company, status, insert_date, update_date) values
(1,1,"ショートファーコート","モコモコと毛足の長いエコファー素材が、暖かな表情をつむぐショートコート。襟と手元のリブを取り外して、シックに装うこともできるアイテムです。
フックタイプの合わせなので、フロントを開けた着こなしもサマになりそう。",2,"24840",10,"./image/","img_outer.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(2,2,"モッズコート","毛足の長い素材を内側に配した、旬のムートン素材のモッズコート。ウエストボタンをはずすとストレートのシルエットになり、合わせアイテムを選ばず幅広く着回せます。
大きく開いたカラーやウエストをマークするリボンで、女性らしい着こなしを叶えます。",2,"25920",10,"./image/","img_outer2.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(3,3,"ウールロングコート","メンズコートのデザインを落とし込み、サイズ感もややオーバーサイズに作ることでウエストマークが際立ちメリハリがつきスタイルアップ効果も。
前合わせを逆にしメンズ仕様にしジェンダーレスな雰囲気が楽しめる一枚に仕上げました。",2,"37800",10,"./image/","img_outer4.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(4,4,"ファーライクコート","羽織るだけで、コーディネートの格を上げてくれるファーライクコート。パーティーシーンなどの華やぎコーデにはもちろん、デニムやカジュアルなワイドパンツに
合わせてカジュアルダウンさせれば、こなれ感のある着こなしに。",2,"24840",10,"./image/","img_outer6.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(5,5,"ファーカラーコート","毎年人気のAラインコートが、今年はさらにドラマティックな表情で登場。ウエスト部分から切り替えを入れて、ふんわりフレア感を楽しめるこだわりの一枚です。
洗練されたWボタンとクラシカルなカラーのミックス感のおかげで、甘過ぎることなくレディな雰囲気に。",2,"31320",10,"./image/","img_outer8.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(6,6,"ファーマークコート","ビッグカラーと、ロング丈ならではのフレア感が余裕感たっぷり。ポケット部分にあしらわれたエコファーが目を惹くリッチな仕上がりです。フロントを開ければカジュアルに、
ベルトでウエストマークすれば女性らしいシルエットが楽しめたりと、様々な表情を演出してくれる万能コートです。",2,"34560",10,"./image/","img_outer10.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(7,7,"フェザーニットプルオーバー","チュールとドッキングしたロマンティックなニット。デコルテ部分にドットチュールを施し、上品な肌見せを演出しました。ボリューミーなスカートに合わせて
お呼ばれシーンに、シックなワイドパンツに合わせればハンサムな印象にもなれる着まわし自在なアイテムです。",3,"8964",10,"./image/","img_tops.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(8,8,"オフショルニットプルオーバー","デコルテから腕にかけてのラインを美しく、すっきり見せてくれるオフショルダーニット。ふわふわで軽やかな上質の素材感や、幅広のオフショルダーで艶感たっぷり。
ブラウジングが決まりやすい、程よくフィットした腰回りのデザインは、スカートやデニム、ワイドパンツとも好相性です。",3,"10260",10,"./image/","img_tops2.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(9,9,"ファーショートニットプルオーバー","見た目にも暖かな印象のファーライク素材のニット。ハイネックやウエスト、袖口はリブ仕様ですっきり仕様に。もたつくことなくモードな着こなしを叶えます。
コンパクトなシルエットはどんなボトムスと合わせやすく、このニットでこなれた雰囲気が得られるおしゃれ心を満たしてくれる一枚です。",3,"10960",10,"./image/","img_tops4.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(10,10,"フェザーキャミ&カーデSET","ふんわりコンパクトなカーディガンの上に、同素材のキャミソールを合わせた特別感のあるセット。キャミソールの肩部分にあしらったフェザーは
目を惹く華やかなデザイン。おしゃれするって楽しい、そんな気持ちを改めて思い出させてくれるフェミニンな一着。",3,"12960",10,"./image/","img_tops6.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(11,11,"レイヤードギャザートップス","透け感のあるロマンティックなギャザーブラウスにビスチェがドッキングしたトップスセット。ウエストラインを美しく魅せてくれるビスチェは
ブラウスオンや、インにしたりと、２wayの着こなしも◎。気分やシーンで様々な印象になれる着まわし力抜群なセットです。",3,"11840",10,"./image/","img_tops8.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(12,12,"パフスリーブレースブラウス","こだわりのあるレースのおかげで、雰囲気のある着こなしが得られるブラウスは、ボレロのように羽織ったり、ボタンを閉めてインナーとのレイヤードを楽しんだり、コーディネートの幅が広がります。
肩から袖に向かって、紐で調整可能なギャザーが入っているので、その日の気分によって印象を変えられるのも嬉しいところ。",3,"13500",10,"./image/","img_tops10.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(13,13,"レースインナーショートパンツ","繊細レースが大人リッチな印象のショートパンツは、ゆったりニットに合わせたリラックスなスタイルが旬。ウエストゴム仕様の履き心地のよいパンツは、
キャミソールとあわせて、大人可愛いラウンジウエアとしてもオススメなアイテムです。",4,"5832",10,"./image/","img_btms.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(14,14,"レギンスインナースカートパンツ","たっぷりのフレア感でスカート気分で履けるロングワイドパンツ。ウエストのサテンデザインもポイント。落ち着いたピンクとネイビーは、光沢を持たせた生地感が華やかな印象。
手持ちのトップスに合わせるだけで、モード感溢れる着こなしに。",4,"12960",10,"./image/","img_btms2.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(15,15,"バリエーションパンツ","PNKは光沢感のある総フリンジ、BLKは煌めくスパンコールの素材。どちらもやわらかく、薄手の着やすいもので作ったオシャレなバリエーションパンツ。
ウエストは異素材のパイピングでシンプルにしました。シャツやニットなど、カジュアルなアイテムとのコーディネイトがおすすめです。",4,"11340",10,"./image/","img_btms4.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(16,16,"エコファースクエアスカート","全面にふんわりとエコファーを施した暖かみ溢れる、トレンド感のあるミニ丈のスカート。コンパクトなデザインは、どんなトップスとも合わせやすく、
Aラインならではの動きやすさ。目を惹く素材感は、いつものコーディネートに鮮度をもたらしてくれます。",4,"9936",10,"./image/","img_btms6.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(17,17,"デコラティブエンブロイダリースカート","ビジューやビーズをあしらった、リュクスな仕上がりのデコラティブエンブロイダリースカート。刺繍はオリジナルになります。
サイドを飾るフリルも愛されポイント。タイトかつミニ丈のシルエットで、品よくまとめられています。",4,"13500",10,"./image/","img_btms8.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(18,18,"ラメニットプリーツスカート","旬アイテムの一つであるニットスカートを、ディテールにこだわり大人っぽく洗練させた一品です。緩めにシャーリングしてふんわりとしたガーリーな雰囲気に、
キュッと寄せてタイトスカート風にしたりと、アレンジも自在な360℃どこから見ても美シルエットな一着です。",4,"9936",10,"./image/","img_btms10.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(19,19,"ケーブルニットワンピース","秋冬気分を盛り上げる、暖かなケーブルニットワンピース。ゆったりとしたシルエットで、女の子らしい雰囲気たっぷりの一枚に仕上げました。
すっきりとシンプルにも、ベルトを合わせてブラウジングさせた着こなしも今年らしくておすすめです。",5,"14040",10,"./image/","img_drs.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(20,20,"プリーツデザインロングワンピース","可憐な小花柄にプリーツが印象的なヴィンテージライクのロングワンピースは、軽くしなやかな素材感で、重くなりがちな冬のコーディネートが華やぐ一着。
ワッシャーのようなプリーツ加工は、さりげない甘さと洗練さが漂います。",5,"15120",10,"./image/","img_drs2.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(21,21,"レースIラインワンピース","デイリーからちょっとしたオケージョンシーンにとどちらでもOKなレースワンピース。長めの袖や、襟ぐりをベロアテープにすることで、シーズンムード薫る仕上がりに。
デイリーで着用する際は、パンツ合わせもお勧めです。",5,"19440",10,"./image/","img_drs4.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(22,22,"ルーズニットワンピース","ワンショルダーの肌見せで、センシュアルに視線を誘うニットワンピース。ウエストをキュッと絞り、メリハリをプラス。
裾に向かって広がるフレアシルエットも、フェミニンな美バランスを叶えます。",5,"15120",10,"./image/","img_drs6.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(23,23,"タートルニットワンピース","ボリューミーなタートルネック、ウエストをブラウジングしたゆるフォルムが魅力のニットワンピース。一枚で暖かく、着心地も楽チンなのに、今年らしい長め袖&ボリューム袖など、
オシャレに見せる仕掛けも満載です。ラメ糸を使用したウール素材で、可愛らしさも満点。",5,"13150",10,"./image/","img_drs8.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(24,24,"オープンショルダータートルニットワンピース","肩見せのデザインに、存在感のあるたっぷりのオフショルタートルネックを重ねたような女性らしさ満点のニットワンピース。
ふわふわの素材感を活かしたゆったりシルエットは、着心地も快適です。",5,"16200",10,"./image/","img_drs10.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(25,25,"2WAYスレンダーサンダル","ふわふわとした装飾で、足元をゴージャスに魅せるスレンダーサンダル。取り外してシンプルにも使える、2way構造がポイントです
スラリと伸びたヒールによって、後ろ姿もレディに決まりそう。シーズンレスで使えるのも魅力",6,"11180",10,"./image/","img_sh.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(26,26,"ギャザーデザインシューズ","フロントにクロスラインを作れるリボンで、引き締まった足元を印象付けるシューズ。ニュアンスある表情のギャザーデザインが、味わい深い一足。
優しいカーブを描いたヒールは、しっかりと幅を取っているから、安定した歩き心地を届けます。",6,"14040",10,"./image/","img_sh2.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(27,27,"センタージップショートブーツ","ハードな印象のジップブーツをパテント素材のさりげない光沢で女性らしさをプラスして今年らしくアップデート。
ボリュームのあるソールは、アクセントをプラスしてくれるだけでなく、安定感のある歩行をサポートしてくれるのも魅力的。",6,"16200",10,"./image/","img_sh4.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(28,28,"スエードキャップ","エコスエードを使用した、トレンド感のあるルックスが魅力のキャップ。バックルベルト仕様のアジャスターで自分サイズに調節でき、ジャストなフィット感と
快適なかぶり心地にもこだわりました。いつものコーディネートにプラスワンすればグッと今年らしい表情に。",7,"4536",10,"./image/","img_ac1.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(29,29,"エコファーピアス","今季トレンドのファーピアス。ふわふわしたエコファーは存在感を与え、フェイスラインを華やかに演出します。
普段使いはもちろん、特別な日のドレスアップスタイルのプラスワンアイテムとしてもおすすめです。",7,"2700",10,"./image/","img_ac2.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(30,30,"ビジューモチーフWネックレス","華奢なチェーンを2本重ねた、デコルテラインを華やかに彩るネックレス。
2本を重ねたり、1本ずつ付けたりと3WAYで楽しめるネックレスは、胸元が開いたトップスやワンピースにと、活躍の幅が広がる一品。",7,"3456",10,"./image/","img_ac3.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(31,31,"コルセットリボンベルト","引き続き人気のコルセットベルトが、秋冬仕様の素材でお目見え。暖かみのあるグレーチェックは、
シックな色味のボトムと合わせればとたんにトレンド感が生まれ、これからの季節のおしゃれをより高めてくれます。",8,"8964",10,"./image/","img_gd.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(32,32,"エコファーマフラー","ふわふわの優しい肌さわりのエコファーマフラー。お顔周りを華やかにしてくれるエコファーは軽さも備えているので、
長時間着用していても疲れにくいのも魅力。お揃いのエコファーミトンとコーディネートすれば、グッとトレンド感がアップします。",8,"12420",10,"./image/","img_gd1.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date)),

(33,33,"フェイクレザー太ベルト","やや太めのつくりになっていて、確かな存在を放つベルト。剣先が垂れる長さで、いつものワンピースやパンツスタイルに
一気にトレンド感がでます。柔らかく付けやすい、フェイクレザーを採用。",8,"4860",10,"./image/","img_gd2.jpg",cast('2018-01-08' as date),"abcshop",1,NOW(),cast('2018-01-08' as date));

create table cart_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(128) comment "ユーザーID",
sample_user_id varchar(128) comment "仮ユーザーID",
product_id int not null comment "商品ID",
count int not null comment "購入個数",
insert_date datetime not null comment "登録日",
update_date datetime comment "更新日",
foreign key(user_id) references user_info(user_id) on update cascade,
foreign key(product_id) references product_info(product_id) on update cascade
)comment "カート情報テーブル";

insert into cart_info(user_id, product_id,count, insert_date) values("m",1,1, NOW());

create table destination_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) not null comment "ユーザーID",
family_name varchar(16) not null comment "姓",
first_name varchar(16) not null comment "名",
email varchar(32) not null comment "メールアドレス",
tel_number varchar(13) not null comment "電話番号",
user_address varchar(50) not null comment "住所",
insert_date datetime not null comment "登録日",
foreign key(user_id) references user_info(user_id) on update cascade on delete cascade
) comment "宛先情報テーブル";

insert into destination_info(user_id, family_name, first_name, email, tel_number, user_address, insert_date)
values("m", "小林", "陽", "soleil.04k@gmail.com", "090-0000-0000", "神奈川県横浜市", NOW());

create table purchase_history_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) not null comment "ユーザーID",
product_id int not null comment "商品ID",
count int not null comment "購入個数",
insert_date datetime not null comment "登録日",
update_date datetime comment "更新日",
foreign key(user_id) references user_info(user_id) on update cascade on delete cascade,
foreign key(product_id) references product_info(product_id) on update cascade
) comment "購入履歴情報テーブル";

insert into purchase_history_info(user_id, product_id,count, insert_date)
values("m", "1",1, NOW());