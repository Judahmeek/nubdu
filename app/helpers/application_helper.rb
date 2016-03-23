module ApplicationHelper
    def title(page_title)
      content_for(:title) { page_title }
    end
    
    def deparameterize(string)
      string.split('-').map(&:capitalize).join(' ')
    end
end
