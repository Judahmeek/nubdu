class Domain < ActiveRecord::Base
    belongs_to :domain_categories
    
    def to_param
        cached_slug
    end
end
