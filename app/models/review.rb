class Review < ApplicationRecord
  validates :author, :content, presence: true
  belongs_to :user

  def self.create_review(review_params)
    JSON.parse(
    RestClient.post "http://localhost:3000/universities/#{review_params['university_id']}/reviews", {
      author: review_params['author'],
      content: review_params['content'],
      rating: review_params['rating']
      })
    end
end
