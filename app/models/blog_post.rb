class BlogPost < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :content, presence: true, length: { minimum: 150 }
end
