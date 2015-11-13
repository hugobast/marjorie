class EssayDecorator < Draper::Decorator
  delegate_all

  def share_image
    return default_image unless contains_image?

    parsed_essay_images.first['src']
  end

  private

  def contains_image?
    !parsed_essay_images.empty?
  end

  def default_image
    helpers.image_url('share-image.png')
  end

  def parsed_essay
    Nokogiri::HTML(content)
  end

  def parsed_essay_images
    parsed_essay.css('img')
  end
end
