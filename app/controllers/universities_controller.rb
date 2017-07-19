class UniversitiesController < ApplicationController
  def index
    @universities = University.get_universities
    if params[:name]
      name = params[:name]
      # binding.pry
      @universities = University.search_by_name(name)
    end
  end
end
