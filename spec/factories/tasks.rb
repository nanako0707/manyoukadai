#FactoryBotを使用しますという記述
FactoryBot.define do
  #作成するテストデータの名前を「task」とする
  #実際に存在するクラス名と一致するテストデータの名前をつければ、そのクラスのテストデータを自動で作成します
  factory :task do
    name {'Factoryで作ったデフォルトのタイトル1'}
    detail {'Factoryで作ったデフォルトのコンテント1'}
  end
  #作成するテストデータの名前を「second_task」とします
  #存在しないクラス名の名前をつける場合、オプションで「このクラスのテストデータにしてください」と指定します
  factory :second_task, class: Task do
    name { 'Factoryで作ったデフォルトのタイトル2'}
    detail {'Factoryで作ったデフォルトのコンテント2'}
  end
end
