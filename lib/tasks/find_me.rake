namespace :find_me do
  desc 'find me a new apartment'
  task apartments: do
    CustoJustoScraper.get_links
  end
end
