class Review < ApplicationRecord
  validates :author, :content, presence: true
  belongs_to :university
  belongs_to :user
end
