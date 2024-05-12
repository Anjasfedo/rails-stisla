class Document < ApplicationRecord
    validates :title, presence: true, length: { minimum: 1 }
    validates :content, presence: true
    
end
