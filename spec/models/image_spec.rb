require 'spec_helper'

describe Image do
  context 'scopes' do
    describe 'sorted' do
      let!(:first) { create(:image) }
      let!(:second) { create(:image) }
      let!(:third) { create(:image) }

      it 'sorts images by created date' do
        expect(described_class.sorted).to eq [first, second, third]
      end
    end
  end
end
