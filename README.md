# アプリケーション名
kondate-chat

# アプリケーション概要
レシピシェアをしながら、ユーザー同士でコミュニケーションを取ります。  
また、マイページで毎日の夕食のメニューの記録をすることで、メニューに困った時の参考になります。

# URL
https://kondate-chat.onrender.com

# テスト用アカウント
.Basic認証ID: 5f536ccd4c77a1e2a57366c2f19ba063  
.Basic認証パスワード: b9374e635c6dd2bd912021b3e7fe0096  
.メールアドレス: test@test.com  
.パスワード: 123456  

# 利用方法
## レシピ投稿
1.テスト用アカウントでログインまたは、ユーザー新規登録をします  
2.トップページ上部の「投稿する」ボタンから、レシピを投稿します  
3.自分のレシピは編集・削除ができ、他のユーザーのレシピはお気に入り登録ができます  
## マイページ
1.マイページの上部で、カレンダーにメニューを登録できます  
2.ログインした日から30日分仮データが入っていますが、自分でメニューを登録すると、自分で登録したデータのみの表示になります  
3.ページ下部から自分が投稿したレシピ一覧のページに遷移できます  
4.ページ下部からお気に入り登録をしたレシピ一覧のページに遷移できます  

# アプリケーションを作成した背景
妻から毎晩の夕食のメニューを考えるのが大変だという話を聞き、夕食のメニューを提案してくれるアプリケーションがあったら活用できるのではないかと思いました。  
現時点では提案機能を実装できていませんが、そのような機能を実装できるように、引き続き学習を続けていきます。  

# 洗い出した要件
https://drive.google.com/file/d/1TKONVjC08WsOeM4VGr7cpyTAp8UHDBNu/view?usp=share_link

# 実装した機能についての画像やGIFおよびその説明

https://gyazo.com/7eb15275d3cb9cdf72df4b4acb830d98

# 実装予定の機能
マイページのカレンダーに、メニュー提案機能の追加

# データベース設計
https://github.com/hidekazudazoo/kondate-chat/blob/main/ER%E5%9B%B3.svg

# 画面遷移図
https://github.com/hidekazudazoo/kondate-chat/blob/main/%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB%E5%9B%B3.svg

# 開発環境
Ruby on rails

# ローカルでの動作方法
以下のコマンドを順に実行します。  
% git clone https://github.com/hidekazudazoo/kondate-chat.git  
% cd kondate-chat  
% bundle install  
% yarn install  

# 工夫したポイント
・お気に入り登録ボタンの非同期化  
・マイページ内にカレンダー表示  