class SearchController < ApplicationController
  def index
    @terms = params[:q]

    @countries = Country.where("name LIKE (?)", "%#{@terms}%")
  end
end
