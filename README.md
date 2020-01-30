# MTGドラフトをやろう

## サービス概要
カードゲームのマジックザギャザリング（MTG)のイベントスケジュールを
カードショップごとにチェックできるアプリです。

※ドラフトとはカードを持っていなくてもカードショップに集まった
不特定多数（４〜８人）でゲームができる麻雀的なゲームのルールです。

## 登場人物

### エンドユーザー
- カードゲームのイベントに参加したい人
- イベントを主催するカードショップ

## 問題
イベントに参加したいユーザーにとって、ショップごとのイベントスケジュールを把握しづらい。  
現状では、ショップごとのブログ、twitterの投稿などを確認する必要がある。

## 解決方法
カードショップにイベント情報を登録してもらい、ユーザーがショップごとのイベント情報を簡単に一覧できるようにする。 

## プロダクト
マジックザギャザリングのイベント開催情報をチェックできるスケジュール管理アプリ

## マーケット
カードを持っていないが、近場のショップにふらっと立ち寄り、ドラフトイベントに参加したい人

## 使用するAPI
- google Maps JavaScript API
- google places API

## API利用の手順
Google Map Platformにアクセスし、アカウント登録し、請求情報を入力する。  
請求情報が入力と共にAPIキーが発行される。  
htmlにGoogle Maps用のScriptを読み込むコードを記入する。  
そのコードに key={APIキー}を追加する。

## Configuration
ファイルの中身はご自身の環境に合わせて適宜変更してください
- データベースの設定

`$ cp config/database.yml.default config/database.yml`
