class User < ApplicationRecord
  has_many :user_vacations
  has_many :vacations, through: :user_vacations
  has_many :events
end
