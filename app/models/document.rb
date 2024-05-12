class Document < ApplicationRecord
    validates :title, presence: true, length: { minimum: 1 }
    validates :content, presence: true, length: { minimum: 5, maximum: 10 }
    
end
