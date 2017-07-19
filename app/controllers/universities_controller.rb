class UniversitiesController < ApplicationController
  def index
    @universities = University.get_universities
    binding.pry
  end
end
