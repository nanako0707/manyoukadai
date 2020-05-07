require 'rails_helper'
RSpec.describe 'タスク管理機能', type: :model do
  it 'titleが空ならバリデーションが通らない' do
    task = Task.new(name: '', detail: '失敗テスト')
    #taskが妥当（valid）でないことを期待する
    expect(task).not_to be_valid
  end
  it 'detailが空ならバリデーションが通らない' do
    task = Task.new(name: '失敗テスト', detail: '')
    expect(task).not_to be_valid
  end
  it 'nameとdetailに内容が記載されていなければバリデーションが通る' do
    task = Task.new(name: '', detail: '')
    expect(task).not_to be_valid
    expect(task.errors[:name]).to be_present
  end
end
