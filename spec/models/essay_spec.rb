require 'spec_helper'

describe Essay do
  subject { create(:essay) }

  context 'scopes' do
    describe 'sorted' do
      let!(:first) { create(:essay, :published, since: 1.hour) }
      let!(:second) { create(:essay, :published, since: 2.hour) }
      let!(:third) { create(:essay, :published, since: 3.hour) }

      it 'sorts essays by published date' do
        expect(described_class.sorted).to eq [first, second, third]
      end
    end
  end

  it 'has a title' do
    expect(subject.title).to eq 'Essay Title'
  end

  it 'has content' do
    expect(subject.content).to eq '<p>Lorem ipsum<p>'
  end

  it 'starts off has a draft' do
    expect(subject).to be_drafted
  end

  context 'publishing' do
    before { subject.publish! }

    it { expect(subject.published_at).to be }
    it { expect(subject).to be_published }
  end
end
