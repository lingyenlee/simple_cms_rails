class Section < ApplicationRecord

    belongs_to :page, optional: true
    
end
