class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @safaris = Safari.all
    @user = current_user
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
