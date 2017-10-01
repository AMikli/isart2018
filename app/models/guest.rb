class Guest < ApplicationRecord
  has_one :booking
  has_one :stay
end
