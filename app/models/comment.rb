class Comment < ActiveRecord::Base
    belongs_to :submission
    belongs_to :user
    has_many :votes
    
    validates :user_id,         :presence       => true,
                                :numericality   => { only_integer: true }
                        
    validates :submission_id,   :presence       => true,
                                :numericality   => { only_integer: true }
                              
    validates :content,         :presence       => true,
                                :length         => { maximum: 600 }
end
