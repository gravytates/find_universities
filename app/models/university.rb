class University < ApplicationRecord
  validates :name, presence: true
  has_many :reviews


  def self.get_universities
    response = JSON.parse(RestClient.get 'http://localhost:3000/universities')
  end
end
