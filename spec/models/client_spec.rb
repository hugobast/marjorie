require 'spec_helper'

RSpec.describe Client do
  context '.by_importance' do
    let!(:client_with_reference) { create(:client)}
    let!(:client_with_logo_only) { create(:client, statement: '') }

    subject { described_class.by_importance }

    it 'returns client with statement first' do
      expect(subject).to match_array [client_with_reference, client_with_logo_only]
    end
  end
end
