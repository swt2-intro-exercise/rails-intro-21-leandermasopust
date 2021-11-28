class Paper < ApplicationRecord
    validates :title, presence: true
    validates :venue, presence: true
    validates :year, presence: true
    validates :year, numericality: { only_integer: true }
    has_and_belongs_to_many :authors
end
