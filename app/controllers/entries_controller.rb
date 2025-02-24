class EntriesController < ApplicationController
  def new
    @entry = Entry.new
    @place = Place.find_by({ "id" => params["place_id"] })
  end

  def create
  end
end
