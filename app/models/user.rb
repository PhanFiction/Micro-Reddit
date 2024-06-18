class User < ApplicationRecord
  has_many :comment
  has_many :post

  validates :username, presence: { message: "Please enter a username" }
  validates :password, presence: { message: "Please enter a password" }
  validates :email, presence: { message: "Please enter a email" }
end
