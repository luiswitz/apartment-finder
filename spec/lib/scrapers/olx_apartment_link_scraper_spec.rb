# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Scrapers::OlxApartmentLinkScraper do
  subject { described_class.new(html) }

  let(:html) { File.read("#{fixture_path}/olx.html") }

  let(:expected_links) do
    [

      'https://www.olx.pt/anuncio/aluga-se-apartamento-IDBycVi.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/aluga-se-apartamento-IDBycVi.html#b2e64ec2dd;promoted',
      'https://www.olx.pt/anuncio/apartamento-t2-renovado-centro-da-pontinha-IDBykqb.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t2-renovado-centro-da-pontinha-IDBykqb.html#b2e64ec2dd;promoted',
      'https://www.olx.pt/anuncio/t1-contrato-anual-renovvel-IDBxdyG.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t1-contrato-anual-renovvel-IDBxdyG.html#b2e64ec2dd;promoted',
      'https://www.olx.pt/anuncio/apartamento-t1-na-primeira-linha-da-praia-IDBuS1Y.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-na-primeira-linha-da-praia-IDBuS1Y.html#b2e64ec2dd;promoted',
      'https://www.olx.pt/anuncio/apartamento-t1-penafiel-totalmente-mobilado-equipado-IDAtEYN.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-penafiel-totalmente-mobilado-equipado-IDAtEYN.html#b2e64ec2dd;promoted',
      'https://www.olx.pt/anuncio/apartamento-t2-para-arrendamento-nos-benguiados-de-setembro-a-junho-IDB03gK.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t2-para-arrendamento-nos-benguiados-de-setembro-a-junho-IDB03gK.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-moderno-para-arrendamento-ao-ano-em-tavira-IDBu4sg.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-moderno-para-arrendamento-ao-ano-em-tavira-IDBu4sg.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-mobilado-equipado-arroios-junto-ao-metro-IDBy35Q.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-mobilado-equipado-arroios-junto-ao-metro-IDBy35Q.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-totalmente-remodelado-prximo-do-babilnia-amadora-IDBxeBp.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-totalmente-remodelado-prximo-do-babilnia-amadora-IDBxeBp.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-rua-manuel-peixoto-IDBynAW.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-rua-manuel-peixoto-IDBynAW.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/arrenda-se-t2-centro-da-cidade-t-equipado-e-mobilado-e-com-arrumos-IDBxMEF.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/arrenda-se-t2-centro-da-cidade-t-equipado-e-mobilado-e-com-arrumos-IDBxMEF.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/arrenda-se-t1-com-lugar-de-garagem-e-arrumo-n-h-contacte-nos-IDBlN6U.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/arrenda-se-t1-com-lugar-de-garagem-e-arrumo-n-h-contacte-nos-IDBlN6U.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-a-300-mts-da-praia-da-rocha-IDBykbI.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-a-300-mts-da-praia-da-rocha-IDBykbI.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-c-garagem-para-frias-marginal-figueira-da-foz-IDAZPJQ.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-c-garagem-para-frias-marginal-figueira-da-foz-IDAZPJQ.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/excelente-t2-mobilado-para-frias-foz-village-IDATNOh.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/excelente-t2-mobilado-para-frias-foz-village-IDATNOh.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t1-cozinha-semi-equipada-benfica-IDBtsg8.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t1-cozinha-semi-equipada-benfica-IDBtsg8.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t2-r-cho-com-garagem-fechada-b-ponte-IDByn4s.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t2-r-cho-com-garagem-fechada-b-ponte-IDByn4s.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-albufeira-a-partir-12-maio-IDAaFQ3.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-albufeira-a-partir-12-maio-IDAaFQ3.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/aluga-se-apartamento-IDBycVi.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/aluga-se-apartamento-IDBycVi.html#b2e64ec2dd;promoted',
      'https://www.olx.pt/anuncio/apartamento-t1-para-arrendar-todo-mobilado-e-equipado-IDBqaaH.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-para-arrendar-todo-mobilado-e-equipado-IDBqaaH.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t1-em-condominio-com-piscina-no-bairro-do-rosrio-IDBymdT.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t1-em-condominio-com-piscina-no-bairro-do-rosrio-IDBymdT.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-para-arrendamento-perto-do-seixal-IDBylR2.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-para-arrendamento-perto-do-seixal-IDBylR2.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-na-primeira-linha-da-praia-IDBuS1Y.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-na-primeira-linha-da-praia-IDBuS1Y.html#b2e64ec2dd;promoted',
      'https://www.olx.pt/anuncio/excelente-apartamento-t2-1-dafundo-IDBuGU8.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/excelente-apartamento-t2-1-dafundo-IDBuGU8.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t1-mobilado-bairro-do-liceu-IDBylV5.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t1-mobilado-bairro-do-liceu-IDBylV5.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-para-arrendar-junto-r-do-brasil-IDBw840.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-para-arrendar-junto-r-do-brasil-IDBw840.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-com-lugar-de-garagem-alagoas-esgueira-IDBy3BU.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-com-lugar-de-garagem-alagoas-esgueira-IDBy3BU.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-pronto-a-habitar-em-prdio-com-2-elevadores-junto-estao-cp-IDAO42n.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-pronto-a-habitar-em-prdio-com-2-elevadores-junto-estao-cp-IDAO42n.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/oportunidade-nica-t2-pronto-a-habitar-visite-IDB8vQD.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/oportunidade-nica-t2-pronto-a-habitar-visite-IDB8vQD.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/xxxreservadoxxxxt1-equipado-e-mobilado-junto-ao-metro-de-arroios-IDBxwWU.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/xxxreservadoxxxxt1-equipado-e-mobilado-junto-ao-metro-de-arroios-IDBxwWU.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t2-renovado-centro-da-pontinha-IDBykqb.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t2-renovado-centro-da-pontinha-IDBykqb.html#b2e64ec2dd;promoted',
      'https://www.olx.pt/anuncio/t1-1-junto-ao-hospital-so-joo-situado-em-pedrouos-IDBykxk.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t1-1-junto-ao-hospital-so-joo-situado-em-pedrouos-IDBykxk.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-com-boas-reas-em-rana-IDBykbC.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-com-boas-reas-em-rana-IDBykbC.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-centro-aveiro-IDANOMH.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t1-centro-aveiro-IDANOMH.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t2-praia-de-mira-IDBgAZC.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t2-praia-de-mira-IDBgAZC.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/alugo-apartamento-manta-rota-IDBpBT5.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/alugo-apartamento-manta-rota-IDBpBT5.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-praia-da-rocha-IDBhsay.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-praia-da-rocha-IDBhsay.html#b2e64ec2dd;promoted',
      'https://www.olx.pt/anuncio/apartamento-duplex-c-2-quartos-e-garagem-a-800m-do-centro-IDByjpt.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-duplex-c-2-quartos-e-garagem-a-800m-do-centro-IDByjpt.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/arrendamento-t2-na-marisol-mobilado-e-equipado-IDAS3OO.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/arrendamento-t2-na-marisol-mobilado-e-equipado-IDAS3OO.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-remodelado-junto-junta-de-freguesia-da-ramada-IDBxPkx.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-remodelado-junto-junta-de-freguesia-da-ramada-IDBxPkx.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/povoa-santa-iria-t2-tgides-park-coz-equipada-parq-vistas-IDBxbRK.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/povoa-santa-iria-t2-tgides-park-coz-equipada-parq-vistas-IDBxbRK.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-remodelado-abraveses-viseu-IDAU2PQ.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-remodelado-abraveses-viseu-IDAU2PQ.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t2-a-poucos-minutos-da-cidade-de-aveiro-IDBvGio.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/apartamento-t2-a-poucos-minutos-da-cidade-de-aveiro-IDBvGio.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-com-2-frentes-e-lugar-de-garagem-IDByhOB.html#b2e64ec2dd',
      'https://www.olx.pt/anuncio/t2-com-2-frentes-e-lugar-de-garagem-IDByhOB.html#b2e64ec2dd'
    ]
  end

  describe '#find_links' do
    it 'returns apartments links from page' do
      expect(subject.find_links).to eq(expected_links)
    end
  end
end
