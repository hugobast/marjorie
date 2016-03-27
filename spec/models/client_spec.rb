require 'spec_helper'

RSpec.describe Client do
  let!(:client_with_reference) { create(:client)}
  let!(:client_with_logo_only) { create(:client, statement: '') }

  context '.important' do
    subject { described_class.important }

    it 'returns client with statement first' do
      expect(subject).to match_array [client_with_reference]
    end
  end

  context '.less_important' do
    subject { described_class.less_important }

    it 'returns client with statement first' do
      expect(subject).to match_array [client_with_logo_only]
    end
  end
end
