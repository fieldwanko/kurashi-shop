
Kurashi-Shop （ショッピングサイト)　について ソフト名】 Kurahi-Shop Ver1.01 【制作日】　2019 9/13 ~ 9/25
【種　別】 EC 【配布元】http://3.114.171.126/【転載の可否】　否 【動作環境】Windows Mac 【開発環境】Ruby on rails5　ruby 2.5.5 【使用言語】html.css.ruby.javascript [ デプロイ ] AWS EC2 RDS nginx unicorn 

――――――――――――――――――――――――――――――――――――

・はじめに Kurashi-Shopはたくさんの人に使ってもらえるよう設立されたECサイトです

・概要 ユーザー・販売店・管理者と３つの立ち位置が存在します。ユーザーは商品をカートに入れ、購入できるほか、クーポンや、プレゼント、登録住所追加、購入履歴からの配送状況確認など様々な機能を用いることができます
　販売店は商品の販売はもちろん、ユーザーの購入情報、配送状況の変更などを行えるようにしております。
　管理者はユーザー一覧、販売店一覧、商品一覧などのサイト内ユーザー情報をリストで見れるようにしており、また、クーポン発行の機能を搭載しております。

主な特長： 使用したGem [devise]　ログイン・サインアップのため [bootstrap4] レイアウトbootstrapを用いるため [jquery-rails] jqueryを用いるため [refile] 画像投稿のため [refile-mini_magick] 画像のリサイズのため　[font-awesome-sass] アイコンを用いるため [ransack] 検索機能を用いるため [rails-i18n] 日本語化対応にするため 

テーブル [users] ユーザー [sell_users] 販売店 [admins] 管理者 [carts] カート [address_menus] ユーザーの所持住所 [products] 商品 [product_images] 商品の画像 [product_arrivals] 商品の在庫 [order_appends] 購入者情報 （お届け先）[order_details] 購入確定商品 [present_appends] プレゼント用購入情報 [user_requests] ユーザー欲しいものリスト[coupons]クーポン
