class EssayDecorator < Draper::Decorator
  delegate_all

  def excerpt
    helpers.truncate parsed_essay_content, \
      length: 300, separator: ' '
  end

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

  def parsed_essay_content
    parsed_essay.xpath("//text()").to_s
  end

  def parsed_essay_images
    parsed_essay.css('img')
  end
end
