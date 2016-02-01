module ApplicationHelper
    def title(page_title)
      content_for(:title) { page_title }
    end
    
    def create_opts(opts)
      content_for(:create_opts) { opts }
    end
end
