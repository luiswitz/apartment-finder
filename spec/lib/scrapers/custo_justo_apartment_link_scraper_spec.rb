# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Scrapers::CustoJustoApartmentLinkScraper do
  subject { described_class.new(html) }

  let(:html) { File.read("#{fixture_path}/custo_justo.html") }

  let(:expected_links) do
    [
      'https://www.custojusto.pt/porto/apartamentos/t1-hospital-santo-antonio-novo-equipado-19821638',
      'https://www.custojusto.pt/porto/apartamentos/renovado-t2-1-no-muro-trofa-25682874',
      'https://www.custojusto.pt/porto/apartamentos/t1-baixa-do-porto-muito-espacoso-25681910',
      'https://www.custojusto.pt/porto/apartamentos/t1-coz-ind-ao-forno-santegaos-rio-tinto-25682019',
      'https://www.custojusto.pt/porto/apartamentos/t1-vilar-de-andorinho-em-sao-lourenco-25681158',
      'https://www.custojusto.pt/porto/apartamentos/refh2825-t2-igreja-areosa-escola-conducao-areosa-25681118',
      'https://www.custojusto.pt/porto/apartamentos/refh2805-t2-lusiada-feup-25681050',
      'https://www.custojusto.pt/porto/apartamentos/refh1313-t2-kit-ao-metro-do-marques-santa-catari-25681036',
      'https://www.custojusto.pt/porto/apartamentos/refh0417-t2-kit-lusiada-pingo-doce-costa-cabra-25681020',
      'https://www.custojusto.pt/porto/apartamentos/refh1196-t1-a-lusiada-feup-25681000',
      'https://www.custojusto.pt/porto/apartamentos/refh0173-t1-1-a-feup-25680990',
      'https://www.custojusto.pt/porto/apartamentos/refh1492-t1-monte-dos-burgos-norteshoppig-25680986',
      'https://www.custojusto.pt/porto/apartamentos/refh2795-t1-rotunda-areosa-10min-polo-universita-25680975',
      'https://www.custojusto.pt/porto/apartamentos/t2-ermesinde-25677579',
      'https://www.custojusto.pt/porto/apartamentos/t1-de-luxo-coz-equip-remodelado-lug-gar-custoias-25677431',
      'https://www.custojusto.pt/porto/apartamentos/prox-st-rita-t1-c-garagem-25677023',
      'https://www.custojusto.pt/porto/apartamentos/t-1-c-cozinha-equipada-ao-carvalhido-25676535',
      'https://www.custojusto.pt/porto/apartamentos/t2-proximo-ao-centro-gondomar-25676326',
      'https://www.custojusto.pt/porto/apartamentos/t1-1-paranhos-com-terraco-e-garagem-individual-25676689',
      'https://www.custojusto.pt/porto/apartamentos/t1-kit-mobilado-ao-carvalhido-25675488',
      'https://www.custojusto.pt/porto/apartamentos/apartamento-t-2-nas-devesas-25675192',
      'https://www.custojusto.pt/porto/apartamentos/t1-mobilado-e-equipado-nos-jardins-da-arrabida-25675043',
      'https://www.custojusto.pt/porto/apartamentos/apartamento-25674184',
      'https://www.custojusto.pt/porto/apartamentos/t1-remodelado-ao-padrao-da-legua-25074005',
      'https://www.custojusto.pt/porto/apartamentos/apartamento-t2-em-matosinhos-centro-25673067',
      'https://www.custojusto.pt/porto/apartamentos/t2-como-novo-no-centro-da-maia-25671693',
      'https://www.custojusto.pt/porto/apartamentos/t1-equipado-garagem-e-arrumos-centro-25671111',
      'https://www.custojusto.pt/porto/apartamentos/t2-como-novo-a-estrear-rio-tinto-25670143',
      'https://www.custojusto.pt/porto/apartamentos/t1-duplex-mobilado-antas-25668675',
      'https://www.custojusto.pt/porto/apartamentos/casas-remodeladas-t1-25667989',
      'https://www.custojusto.pt/porto/apartamentos/t1-baixa-porto-metro-lapa-25667685',
      'https://www.custojusto.pt/porto/apartamentos/t2-a-avenida-fernao-magalhaes-25666005',
      'https://www.custojusto.pt/porto/apartamentos/t1-remodelado-em-leca-do-balio-25662783',
      'https://www.custojusto.pt/porto/apartamentos/apartamento-partilhado-carvalhido-25662242',
      'https://www.custojusto.pt/porto/apartamentos/t2-mobilado-em-alfena-ermesinde-25658647',
      'https://www.custojusto.pt/porto/apartamentos/t1-com-terraco-e-jardim-160m2-cedofeita-25658530',
      'https://www.custojusto.pt/porto/apartamentos/t2-mobilado-em-alfena-ermesinde-25658243',
      'https://www.custojusto.pt/porto/apartamentos/t1-junto-maia-jardim-maia-15-meses-de-uso-25654226',
      'https://www.custojusto.pt/porto/apartamentos/apartamento-25652858',
      'https://www.custojusto.pt/porto/apartamentos/t1-gulpilhares-25652361'
    ]
  end

  describe '#find_links' do
    it 'return links from page' do
      expect(subject.find_links).to eq(expected_links)
    end
  end
end
