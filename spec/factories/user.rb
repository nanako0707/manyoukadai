#FactoryBotを使用しますという記述
FactoryBot.define do
  #作成するテストデータの名前を「task」とする
  #実際に存在するクラス名と一致するテストデータの名前をつければ、そのクラスのテストデータを自動で作成します
  factory :user do
    name {'test01'}
    email {'test01@example.com'}
    password_digest {'password'}
  end
  #作成するテストデータの名前を「second_task」とします
  #存在しないクラス名の名前をつける場合、オプションで「このクラスのテストデータにしてください」と指定します
  factory :second_task, class: User do
    name { 'test02'}
    email {'test02@example.com'}
    password_digest {'password2'}
  end
end
