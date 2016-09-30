require 'spec_helper'

RSpec.describe ArchiveCell, type: :cell do
  controller HomeController

  describe 'index' do
    subject { cell(:archive).(:index) }

    context 'with some categories' do
      before do
        create(:essay, :front_paged, since: 1.month)
        create(:essay, :front_paged, since: 2.month)
        create(:essay, :front_paged, since: 3.month)
      end

      it 'displays a subheader for section' do
        expect(subject).to have_content('Archives')
      end

      it 'provides a link for essays for each month' do
        expect(subject).to have_selector '.classification__item', count: 3
      end
    end
  end
end