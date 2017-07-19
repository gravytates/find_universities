class UniversitiesController < ApplicationController
  def index
    # @universities = University.get_universities
    # binding.pry
    if params[:name]
      name = params[:name]
      @universities = University.search_by_name(name)
      # redirect_to universities_path
    elsif params[:description]
      description = params[:description]
      @universities = University.search_by_description(description)
    elsif params[:population]
      population = params[:population]
      @universities = University.search_by_population(population)
    elsif params[:mascot]
      mascot = params[:mascot]
      @universities = University.search_by_mascot(mascot)
    elsif params[:page1]
      @universities = University.paginate1
    elsif params[:page2]
      @universities = University.paginate2
    elsif params[:page3]
      @universities = University.paginate3
    elsif params[:page4]
      @universities = University.paginate4
    else
      @universities = University.get_universities
    end
  end
end
