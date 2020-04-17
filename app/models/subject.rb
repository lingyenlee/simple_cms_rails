class Subject < ApplicationRecord

    has_many :pages

    # scope = name of scope 
    # def self.active 
    #     where(:active =>  true)
    # end
    # class.scope (call the scope)
    # when u use lambda, it is evaluted when it's called

    scope :visible, lambda {where(:visible => true)}
    scope :invisible, lambda {where(:visible => false)}
    scope :sorted, lambda {order(:position => :asc)}
    scope :newest_first, lambda {order(:created_at => :desc)}
    scope :search, lambda {|query| where (["name LIKE ?", "%#{query}%"])}
   
end
