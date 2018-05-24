require 'nurse'

class Dependencies < Nurse::DependencyContainer
  def initialize
    super
    add_factory(ApartmentScraperServiceFactory.new)
  end
end
