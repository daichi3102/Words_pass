# PF_MYAPP
# [サービス名]
[アプリ名]
## サービス概要
[アプリ名]は、あなたの年齢、性別、血液型、その日の気分や予定にマッチした漫画や偉人、有名人の名言を提供します。日々の生活において必要な刺激となる名言を通じて、あなたの心に新たなエネルギーを注ぎ込みます。

## 想定されるユーザー層
・モチベーションの維持や向上に関心がある若年層から中年層のビジネスパーソン  
・自己啓発に興味がある学生やクリエイティブ職の方  
・毎日をもっと前向きに生きたいと考えている方    

## サービスコンセプト
日々の生活の中で、「やる気が出ない」「パフォーマンスが上がらない」「人との接触を避けたくなる」など、誰もが時々ネガティブな気持ちに襲われます。私自身もAB型で気分が変わりやすく、そう感じることがしばしばあります。そのような時、漫画や偉人、有名人の名言を読むことで、私は大きな支えを得てきました。スポーツ選手として活動していた経験からも、心の支えがあるとトレーニングにも熱が入り、より良い結果を出すことができました。そんな経験をもとに、簡単な設問に答えるだけで、あなたにぴったりの名言を提供し、心のエネルギーをサポートするこのアプリを開発しました。

トップページから診断ページへスムーズに画面遷移できます。ユーザーは、年齢、性別、血液型、その日の気分、予定、名言の種類（漫画or偉人or有名人）をプルダウンメニューから簡単に選択し、個人に合った名言を受け取ることができます。診断体験後、ユーザーは会員登録をすることで、結果のシェアや保存などの追加機能を利用することができます。この流れは、診断結果に対する興味を引き、会員登録のメリットを直感的に理解してもらうために設計されています。

### ユーザー体験のシナリオ
月曜の朝、週末の休息が終わり、新しい一週間が始まることに少し気が重い…そんな時、[アプリ名]はあなたに活力を与えます。性別や年齢、その日の予定や気分に基づいて、あなたを励まし、元気づける漫画や偉人の名言を提供します。例えば、重要なプレゼンテーションを控えて緊張している時には、「勇気」に関する名言を、長い一日の後に疲れを感じているあなたには、「癒し」に関する名言を提供します。

また、試験勉強や仕事のプロジェクトで忙しい学生や若手社会人には、集中力とモチベーションを高める名言を提供。これにより、ユーザーは自分一人では気づかなかった新たな視点を得ることができ、心に響くメッセージが新たな一歩を踏み出す勇気を与えます。

### 差別化、売りのポイント
・年齢、性別、血液型、気分、予定など、細やかな入力に基づくパーソナライズされた名言の提供  
・漫画、偉人、有名人の中から選りすぐりの名言を厳選し、質の高いインスピレーションを提供  
・体験後の会員登録での名言の保存やシェアにより、ユーザー同士で名言を共有し、ポジティブなコミュニティを形成  

## 実装を予定している機能

### MVP
・診断機能（会員登録不要）  
・会員登録  
・ログイン機能(googleログイン)  

### 以下会員登録後に利用可能  
・マイページ  
・診断結果の保存  
・診断結果のXへのシェア  

### 本リリース
・診断結果の投稿機能  
・投稿された診断結果の一覧表示  
・LINEログイン  

## 主な使用技術
### バックエンド
・Ruby on Rails 7.1.3  
・Ruby 3.2.2  

### gem  
・devise  
・ruby-openai  
・kaminari  

### API  
・OpenAI GPT-4 API 

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