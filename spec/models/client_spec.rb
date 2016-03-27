require 'spec_helper'

RSpec.describe Client do
  let!(:important) { create(:client)}
  let!(:less_important) { create(:client, statement: '') }
  let!(:collaboration) { create(:client, collaboration: true) }

  context '.important' do
    subject { described_class.important }

    it 'returns client with statement first' do
      expect(subject).to match_array [important]
    end
  end

  context '.less_important' do
    subject { described_class.less_important }

    it 'returns client with statement first' do
      expect(subject).to match_array [less_important]
    end
  end

  context '.collaborations' do
    subject { described_class.collaborations }

    it 'returns client that are collaborations' do
      expect(subject).to match_array [collaboration]
    end
  end
end
