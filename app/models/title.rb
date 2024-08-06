class Title < ApplicationRecord
        has_many :comments, dependent: :destroy  
end
