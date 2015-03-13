require 'spec_helper'

describe Essay do
  subject { create(:essay) }

  context 'scopes' do
    describe 'sorted' do
      it 'sorts essays by published date'
    end
  end

  it 'has a title'

  it 'has a body'

  it 'starts off has a draft' do
    expect(subject).to be_drafted
  end

  it 'can be published'
end
