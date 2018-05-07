# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Scrapers::ImovirtualApartmentLinkScraper do
  subject { described_class.new(html) }

  let(:html) { File.read("#{fixture_path}/imovirtual.html") }

  let(:expected_links) do
    [
      'https://www.imovirtual.com/anuncio/apartamento-t2-IDEaGg.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/apartamento-t2-IDEaGg.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-acabamentos-luxo-2-wc-IDE2ek.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-acabamentos-luxo-2-wc-IDE2ek.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t2-renovado-rua-sao-joao-de-deus-proximo-a-camara-de-gaia-IDE7Ya.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t2-renovado-rua-sao-joao-de-deus-proximo-a-camara-de-gaia-IDE7Ya.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-kitchnette-sra-hora-ao-hospital-cuf-e-pedro-hispano-IDE2OI.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-kitchnette-sra-hora-ao-hospital-cuf-e-pedro-hispano-IDE2OI.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/apartamento-t2-IDEaGg.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/apartamento-t2-IDEaGg.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-acabamentos-luxo-2-wc-IDE2ek.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-acabamentos-luxo-2-wc-IDE2ek.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-kit-a-universidade-lusiada-IDElo8.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-kit-a-universidade-lusiada-IDElo8.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-kit-universidade-fernando-pessoa-IDDWhx.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-kit-universidade-fernando-pessoa-IDDWhx.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t2-junto-a-camara-de-gaia-e-perto-do-metro-IDElnw.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t2-junto-a-camara-de-gaia-e-perto-do-metro-IDElnw.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-remodelado-em-leca-do-balio-IDEln7.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-remodelado-em-leca-do-balio-IDEln7.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/apartamento-t1-arrendamento-em-pedroucos-maia-IDEldf.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/apartamento-t1-arrendamento-em-pedroucos-maia-IDEldf.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/arrendamento-temporario-ferias-t2-duplex-3-linha-do-mar-IDEksg.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/arrendamento-temporario-ferias-t2-duplex-3-linha-do-mar-IDEksg.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/apartamento-t1-arrendamento-em-grijo-e-sermonde-vila-nova-de-gaia-IDEj9K.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/apartamento-t1-arrendamento-em-grijo-e-sermonde-vila-nova-de-gaia-IDEj9K.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/apartamento-t2-de-luxo-ao-campo-futebol-de-canidelo-IDEg8P.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/apartamento-t2-de-luxo-ao-campo-futebol-de-canidelo-IDEg8P.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t2-renovado-rua-sao-joao-de-deus-proximo-a-camara-de-gaia-IDE7Ya.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t2-renovado-rua-sao-joao-de-deus-proximo-a-camara-de-gaia-IDE7Ya.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-centro-baltar-com-condominio-incluido-IDDn5y.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-centro-baltar-com-condominio-incluido-IDDn5y.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t2-vilela-paredes-IDBSvQ.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t2-vilela-paredes-IDBSvQ.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-valongo-com-condominio-incluido-IDE2wd.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-valongo-com-condominio-incluido-IDE2wd.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t2-s-tirso-s-salvador-do-campo-IDE2yE.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t2-s-tirso-s-salvador-do-campo-IDE2yE.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-paco-de-sousa-IDCIWa.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-paco-de-sousa-IDCIWa.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t2-junto-a-camara-de-gaia-e-perto-do-metro-IDEbKQ.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t2-junto-a-camara-de-gaia-e-perto-do-metro-IDEbKQ.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/apartamento-t1-c-arrecadacao-e-parqueamento-em-perafita-IDDCL4.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/apartamento-t1-c-arrecadacao-e-parqueamento-em-perafita-IDDCL4.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/apartamento-t1-com-jardim-e-terraco-vilar-IDEbEp.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/apartamento-t1-com-jardim-e-terraco-vilar-IDEbEp.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-kitchnette-sra-hora-ao-hospital-cuf-e-pedro-hispano-IDE2OI.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-kitchnette-sra-hora-ao-hospital-cuf-e-pedro-hispano-IDE2OI.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t2-valongo-renovado-para-arrendar-ou-vender-IDzaF7.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t2-valongo-renovado-para-arrendar-ou-vender-IDzaF7.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-c-varanda-rua-da-alegria-roupeiro-embutido-IDq9JE.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-c-varanda-rua-da-alegria-roupeiro-embutido-IDq9JE.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-remodelado-em-leca-do-balio-IDEaRJ.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/t1-remodelado-em-leca-do-balio-IDEaRJ.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/arrenda-se-excelente-t-1-mobilado-e-equipado-junto-hotel-axis-e-hosp-sao-joao-IDEaQt.html#bbdf601a2e',
      'https://www.imovirtual.com/anuncio/arrenda-se-excelente-t-1-mobilado-e-equipado-junto-hotel-axis-e-hosp-sao-joao-IDEaQt.html#bbdf601a2e'
    ]
  end

  describe '#find_links' do
    it 'returns apartments links from page' do
      expect(subject.find_links).to eq(expected_links)
    end
  end
end
