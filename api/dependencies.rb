require 'nurse'

class Dependencies < Nurse::DependencyContainer
  def initialize
    super
    # p $".grep(/apartment/)
    # p defined?(ApartmentScraperServiceFactory)
    add_factory(ApartmentScraperServiceFactory.new)
  end
end
