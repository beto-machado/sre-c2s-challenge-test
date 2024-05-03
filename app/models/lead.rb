class Lead < ApplicationRecord
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, uniqueness: true, format: { with: EMAIL_REGEX }
  validates :name, presence: true
end
