class BlogPost < ApplicationRecord
  belongs_to :user

  # cloudinary(imagen upload)
  has_one_attached :photo

  validates :name, presence: true
  validates :content, presence: true, length: { minimum: 150 }
end
