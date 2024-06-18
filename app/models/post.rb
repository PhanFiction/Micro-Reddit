class Post < ApplicationRecord
  belongs_to :user

  validates :title, length: { minimum: 3, message: "Enter more than one character" }
  validates :body, length: { minimum: 3, message: "Enter more than one character" }
end
