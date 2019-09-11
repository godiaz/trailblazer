class Schedule < ApplicationRecord
  belongs_to :safari, dependent: :destroy
end
