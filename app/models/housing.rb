class Housing < ApplicationRecord
  has_many :bookings
  mount_uploader :photo, PhotoUploader
end
