# frozen_string_literal: true

class ApartmentLink < ActiveRecord::Base
  validates :link, uniqueness: true
end
