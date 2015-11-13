require 'spec_helper'

describe EssayDecorator do
  subject { EssayDecorator.new essay }

  describe '#share_image' do
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

  describe '#excerpt' do
    describe 'when essay content is long' do
      let(:essay) { create(:essay, :with_image) }

      it 'shows abridged content' do
        expect(subject.excerpt).to eq \
          "Well, yeah you&#39;ve gotta lock that down. She calls it a mayonegg. Please refrain from Mayoneggs during this salmonella scare. Heart attack never stopped old big bear.\r\n\r\nI could use a leather jacket for when I&#39;m on my hog and have to go into a controlled slide. Oh, yeah, the $4,000\r\nsuit is..."
      end
    end

    describe 'when essay content is short' do
      let(:essay) { create(:essay) }

      it 'shows all content' do
        expect(subject.excerpt).to eq \
          'Lorem ipsum'
      end
    end
  end
end
