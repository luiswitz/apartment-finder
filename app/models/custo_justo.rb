class CustoJusto
  LINK = 'https://www.custojusto.pt/porto/apartamentos-arrendar?ps=3&pe=6&ros=4&roe=5'

  def self.format_results(results)
    results.search('a[data-name="url"]').map do |link|
      link['href']
    end
  end
end
