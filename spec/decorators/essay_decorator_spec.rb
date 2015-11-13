require 'spec_helper'

describe EssayDecorator do
  describe '#share_image' do
    subject { EssayDecorator.new essay }

    describe 'when essay contains an image' do
      let(:essay) { create(:essay, :with_image) }

      it 'extracts the embedded image of a post' do
        expect(subject.share_image).to eq \
         "https://marjorie-development.s3.amazonaws.com/uploads/image/image_file/2/image.png"
      end
    end

    describe 'when essay has no image' do
      let(:essay) { create(:essay) }

      it 'uses the default share image' do
        expect(subject.share_image).to eq \
         "/assets/share-image.png"
      end
    end
  end
end
