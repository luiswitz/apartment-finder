require 'rails_helper'

RSpec.describe ApartmentLink, type: :model do
  describe 'validations' do
    it 'can not have a duplicate link' do
      apartment_1 = ApartmentLink.create(link: 'the-link')
      apartment_2 = ApartmentLink.create(link: 'the-link')

      expect(apartment_2).to_not be_valid
    end
  end
end
