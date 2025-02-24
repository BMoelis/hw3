class EntriesController < ApplicationController
  def new
    @entry = Entry.new
    @place = Place.find_by({ "id" => params["place_id"] })
  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = params["place_id"]
    @entry.save
    @place = Place.find_by({ "id" => @entry["place_id"] })
    @entries = Entry.where({ "place_id" => @place["id"] })
    render "places/show"
  end
end
