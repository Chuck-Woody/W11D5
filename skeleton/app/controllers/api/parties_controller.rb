class Api::PartiesController < ApplicationController
  def index
    @parties = Party.all
    render :index
  end

  def show
    @party = Party.find_by(id: params[:id])
    @guests = @party.guests
    @gifts = []
    @guests.each do |guest|
      @gifts << guest.gifts
    end
    render :show
  end
end
