class Contribution < ActiveRecord::Base
    validates :contributor, presence: true
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    validates :text, presence: true

    paginates_per 10
end
