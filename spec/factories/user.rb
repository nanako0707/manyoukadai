FactoryBot.define do
  #作成するテストデータの名前を「task」とする
  #実際に存在するクラス名と一致するテストデータの名前をつければ、そのクラスのテストデータを自動で作成します
  factory :user do
    name {'test1'}
    email {'test1@example.com'}
    password_digest {'password'}
    id {1}
  end
  #作成するテストデータの名前を「second_task」とします
  #存在しないクラス名の名前をつける場合、オプションで「このクラスのテストデータにしてください」と指定します
  # factory :second_user, class: User do
  #   name {'test2'}
  #   email {'test2@example.com'}
  #   password_digest {'password2'}
  #   id {2}
  # end
end
