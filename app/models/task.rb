class Task < ApplicationRecord
  belongs_to :user
  has_many :labels, dependent: :destroy
  has_many :label_users, through: :labels, source: :user
end
