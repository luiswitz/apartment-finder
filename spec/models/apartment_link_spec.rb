# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApartmentLink, type: :model do
  describe 'validations' do
    it 'can not have a duplicate link' do
      ApartmentLink.create(link: 'the-link')

      expect(ApartmentLink.create(link: 'the-link')).to_not be_valid
    end
  end
end
