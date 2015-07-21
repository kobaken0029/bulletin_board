class Contribution < ActiveRecord::Base
    validates :contributor, presence: true, length: { maximum: 15}
    validates :email, allow_blank: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, length: { maximum: 50}
    validates :text, presence: true, length: { maximum: 1000 } 

    paginates_per 10
end
