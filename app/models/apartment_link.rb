class ApartmentLink < ActiveRecord::Base
  validates :link, uniqueness: true
end
