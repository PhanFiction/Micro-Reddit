class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :body, length: { minimum: 5, message: "Enter more than one character" }
end
