class Article < ApplicationRecord
	mount_uploader :imagename, ImagenewsUploader
	class << self
	    def markdown
	      Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	    end
	  end
	  def assign_markdown_content
    	assign_attributes({
      markdown_content: self.class.markdown.render(content)
    })
  end
end
