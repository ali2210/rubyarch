class AlphaBlog < ApplicationRecord
    validates :title, presence: true, length: {minimum: 6, maximum: 100}
    validates :description, presence: true, length: {minimum: 20, maximum: 300}
end
