class UniversitiesController < ApplicationController
  def index
    @universities = University.get_universities
    # binding.pry
    if params[:name]
      name = params[:name]
      @universities = University.search_by_name(name)
    elsif params[:description]
      description = params[:description]
      @universities = University.search_by_description(description)
    elsif params[:population]
      population = params[:population]
      @universities = University.search_by_population(population)
    elsif params[:mascot]
      mascot = params[:mascot]
      @universities = University.search_by_mascot(mascot)
    # else params[:page]
    #   @universities = University.paginate(page: params[:page], per_page: 10)
    end
  end
end
