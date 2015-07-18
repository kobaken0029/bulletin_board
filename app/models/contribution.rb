class Contribution < ActiveRecord::Base
    validates :contributor, presence: true
    validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    
    # default_scope :order => 'id DESC'
    paginates_per 10
end
