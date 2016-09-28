require 'spec_helper'

RSpec.describe CategoryCell, type: :cell do
  describe 'index' do
    subject { cell(:category).(:index) }

    context 'with no categories' do
      it { expect(subject).to_not have_content('Catégories') }
    end

    context 'with some categories' do
      let!(:categories) { create_list(:category, 3) }

      it { expect(subject).to have_content('Catégories') }
    end
  end
end