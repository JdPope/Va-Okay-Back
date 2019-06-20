class Vacation < ApplicationRecord
  has_many :user_vacations
  has_many :users, through: :user_vacations
  has_many :events
end
