class Plan < ActiveRecord::Base
  has_many :plan_users
  has_many :users, through: :plan_users
  has_many :suggestions
  has_many :votes, through: :suggestions
  validates :title, presence: true
  validates :body, presence: true
end
