class PagesController < ApplicationController
  def home
  end

  def contact
    @markers =
      {
        lat: 10.986914,
        lng: -74.779365
      },
      {
        lat: 10.423356,
        lng: -75.548130
      },
      {
        lat: 4.661928,
        lng: -74.109624
      }
  end
end
