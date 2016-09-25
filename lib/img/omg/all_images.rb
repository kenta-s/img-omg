require 'nokogiri'
require 'open-uri'

class AllImages
  class << self
    def get(url)
      html = Nokogiri::HTML(open(url))
      images = html.css('img')

      images.each do |image|
        image_url = image.attributes['src'].value
        file_name = File.basename(image_url)
        File.open(file_name, 'wb'){|f| f.write(open(image_url).read)}
      end
    end
  end
end
