class University < ApplicationRecord
  validates :name, presence: true

# UNIVERSITY INDEX PAGE WITH SCOPED API CALLS
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

# INDIVIDUAL UNIVERSITY PAGE API CALLS
  def self.find_university(id)
    JSON.parse(RestClient.get "http://localhost:3000/universities/#{id}")
  end
end
