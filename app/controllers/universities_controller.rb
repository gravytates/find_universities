require 'will_paginate/array'

class UniversitiesController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    if params[:name]
      name = params[:name]
      @universities = University.search_by_name(name).paginate(page: params[:page], per_page: 5)
    elsif params[:description]
      description = params[:description]
      @universities = University.search_by_description(description).paginate(page: params[:page], per_page: 5)
    elsif params[:population]
      population = params[:population]
      @universities = University.search_by_population(population).paginate(page: params[:page], per_page: 5)
    elsif params[:mascot]
      mascot = params[:mascot]
      @universities = University.search_by_mascot(mascot).paginate(page: params[:page], per_page: 5)
    else
      @universities = University.get_universities.paginate(page: params[:page], per_page: 5)
    end
  end

  def show
    @university = University.find_university(params[:id])
  end
end
