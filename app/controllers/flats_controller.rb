require "open-uri"

class FlatsController < ApplicationController
  def index
    # Retrieve the flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
  end

  def show
    # Retrieve the infos of the flat
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
    @flat = @flats.find { |f| f["id"] == params[:id].to_i }
  end
end
