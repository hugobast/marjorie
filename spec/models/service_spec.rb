require 'spec_helper'

RSpec.describe Service do
  let(:description) { %{
    <ul>
      <li>Rédaction Web optimisée</li>
      <li>Création de contenus médias sociaux</li>
      <li>Rédaction institutionnelle</li>
    </ul>
    <p>Obtenez des textes uniques qui répondent à vos exigences et aux besoins de votre entreprise.</p>
  } }

  subject(:service) { Service.new(title: 'Rédaction', description: description) }

  context '#title' do
    specify { expect(service.title).to eq 'Rédaction' }
  end

  context '#description' do
    specify { expect(service.description).to eq description }
  end

  context '.all' do
    specify { expect(described_class.all.count).to be 4 }
  end
end
