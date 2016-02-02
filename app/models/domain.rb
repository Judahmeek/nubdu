class Domain < ActiveRecord::Base
    belongs_to :domain_categories
    has_many :domain_categories
    
    def to_param
        cached_slug
    end
end
