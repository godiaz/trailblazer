class PagesController < ApplicationController
  def home
  end

  def contact
    @markers =
      {
        lat: 0.338963,
        lng: 32.594442
      },
      {
        lat: 0.0436,
        lng: 32.4418
      }
  end
end
