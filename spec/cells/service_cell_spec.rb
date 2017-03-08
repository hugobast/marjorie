require 'spec_helper'

RSpec.describe ServiceCell do
  controller HomeController

  describe 'index' do
    subject(:index) { cell(:service).(:index) }

    it 'displays a header' do
      expect(index).to have_content('Service')
    end

    it 'uses a grid layout' do
      expect(index).to have_selector '.services__grid'
    end
  end

  describe 'show' do
    let(:service) { Service.all.first }

    subject(:show) { cell(:service, service).() }

    it 'displays a title' do
      expect(show).to have_content 'Rédaction'
    end

    it 'displays the description' do
      expect(show).to have_content 'Rédaction Web optimisée'
    end
  end
end
