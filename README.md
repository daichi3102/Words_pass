# PF_MYAPP
# [サービス名]
[アプリ名]
## サービス概要
[アプリ名]は、年齢、性別、今の気分、今日の予定にマッチした、偉人、有名人、名著、映画、漫画やアニメから、名言を提供します。日々の生活において必要な刺激となる名言を通じて、心のエネルギーをサポートします。

## 想定されるユーザー層
・リモートワークの多いビジネスパーソン  
・受験生や学生  
・セルフケアに取り組んでいる方  

## サービスコンセプト
日々の生活の中で、「やる気が出ない」「パフォーマンスが上がらない」「人との接触を避けたくなる」など、誰もが時々ネガティブな気持ちに襲われます。私自身もAB型で気分が変わりやすく、そう感じることがしばしばあります。そのような時、名言を読むことで、私は大きな支えを得てきました。スポーツ選手として活動していた経験からも、心の支えがあるとトレーニングにも熱が入り、より良い結果を出すことができました。そんな経験をもとに、簡単な設問に答えるだけで、ユーザーにぴったりの名言を提供し、心のエネルギーをサポートするこのアプリを開発しました。

トップページから診断ページへスムーズに画面遷移できます。ユーザーは、年齢、性別、今の気分、今日の予定、名言の種類（偉人、有名人、名著、映画、漫画、アニメ）をプルダウンメニューから簡単に選択し、個人に合った名言を受け取ることができます。診断体験後、ユーザーは会員登録をすることで、結果のシェアや保存などの追加機能を利用することができます。この流れは、診断結果に対する興味を引き、会員登録のメリットを直感的に理解してもらうために設計されています。

### ユーザー体験のシナリオ
月曜の朝、週末の休息が終わり、新しい一週間が始まることに少し気が重い…そんな時、[アプリ名]はユーザーに活力を与えます。年齢、性別、今の気分、今日の予定、名言の種類に基づいて、ユーザーを励まし、元気づける格言や名言を提供します。例えば、重要なプレゼンテーションを控えて緊張している時には、「勇気」に関する名言を、長い一日の後に疲れを感じているユーザーには、「癒し」に関する名言を提供します。

また、試験勉強や仕事のプロジェクトで忙しい学生や社会人には、集中力やモチベーションを高める名言を提供。これにより、ユーザーは自分一人では気づかなかった新たな視点を得ることができ、心に響くメッセージが新たな一歩を踏み出す勇気を与えます。

### 差別化、売りのポイント
・年齢、性別、気分、予定、名言の種類など、細やかな入力に基づくパーソナライズされた名言の提供  
・体験後の会員登録での名言の保存やシェアにより、ユーザー同士で名言を共有し、ポジティブなコミュニティを形成   

## 実装を予定している機能

### MVP
・診断（会員登録不要）  
・会員登録  
・ログイン(googleログイン)  

※以下会員登録後に利用可能  
・診断結果のXへのシェア  
・診断結果の保存  
・マイページ  
  名前やメールアドレスの編集、更新  
  保存した診断履歴の一覧表示、公開、非公開、削除  

### 本リリース
・公開されている診断履歴一覧からのタグ検索  
  -診断時にプルダウンした主要な項目をタグとして保存し、項目ごとにタグ検索ができる  

### 追加で考えている機能
・LINEログイン. 
・LINE通知（LINE Messaging API）. 
  マイページからの設定で、他者の投稿があった時に、本アプリの公式LINEから通知がくるように設定できる. 

## 主な使用技術
### バックエンド
・Ruby on Rails 7.1.3  
・Ruby 3.2.2  

### gem  
・devise  
・ruby-openai  
・kaminari  
・ransack  

### API  
・OpenAI GPT-4 API もしくは GPT-3.5 turbo API  
OpenAIのAPIキーを取得、取得したキーをRails credentialに記述。app/service/chatgpt_service.rbのようなファイルで、OpenAIのAPIを叩く関数を定義。年齢、性別、今の気分、今日の予定、名言の種類の６項目をプルダウンで選べるようにコントローラーとビューを記述して、RailsアプリにChatGPT APIの回答結果を出力する。  
・LINE Messaging API  
  マイページからの設定で、他者の投稿があった時に、本アプリの公式LINEから通知がくるように設定できる.  

### フロントエンド
・Tailwind CSS  
・daisyUI  
・JavaScript  

### インフラ
・Render  
・PostgreSQL  

### テスティング
・RSpec  
・Capybara  
・rubocop  