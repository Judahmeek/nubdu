class Domain < ActiveRecord::Base
    belongs_to :parent, class_name: "Domain"
    has_many :subdomains, class_name: "Domain",
                          foreign_key: "parent_id"
    
    validates :title,       :presence   => true,
                            :length     => { maximum: 30 }
    
    validates :cached_slug, :presence   => true,
                            :length     => { maximum: 30 }
    
    validates :desc,        :presence   => true,
                            :length     => { maximum: 1200 }
    
    validates :parent,      :presence   => true
    
    def breadcrumbs
        self[:breadcrumbs].split('/')
    end
    
    def to_param
        cached_slug
    end
end
