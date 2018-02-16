class SearchController < ApplicationController
  def index
    @terms = params[:q]
    @countries = Country.where("name LIKE (?)", "%#{@terms}%")
  end

  def airports
    @terms = params[:q]
    @airports = Airport.where("name LIKE (?)", "%#{@terms}%")
  end
  
  def universities
    @terms = params[:q]
    @universities = University.where("name LIKE (?)", "%#{@terms}%")
  end
end
