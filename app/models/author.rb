class Author < ApplicationRecord
    
    validates :last_name, presence: true
    has_and_belongs_to_many :papers

    def name
        self.first_name.concat(" ".concat(self.last_name))
    end
end
