class University < ApplicationRecord
  validates :name, presence: true
  has_many :reviews


  def self.get_universities
    JSON.parse(RestClient.get 'http://localhost:3000/universities')
  end

  def self.search_by_name(name)
    JSON.parse(RestClient.get "http://localhost:3000/universities?name=#{name}")
  end

  def self.search_by_description(description)
    JSON.parse(RestClient.get "http://localhost:3000/universities?description=#{description}")
  end

  def self.search_by_population(population)
    JSON.parse(RestClient.get "http://localhost:3000/universities?population=#{population}")
  end

  def self.search_by_mascot(mascot)
    JSON.parse(RestClient.get "http://localhost:3000/universities?mascot=#{mascot}")
  end

  def self.paginate1
    JSON.parse(RestClient.get "localhost:3000/universities?page=1")
  end

  def self.paginate2
    JSON.parse(RestClient.get "localhost:3000/universities?page=2")
  end

  def self.paginate3
    JSON.parse(RestClient.get "localhost:3000/universities?page=3")
  end

  def self.paginate4
    JSON.parse(RestClient.get "localhost:3000/universities?page=4")
  end
end
