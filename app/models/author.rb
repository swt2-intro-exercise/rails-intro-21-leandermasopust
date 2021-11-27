class Author < ApplicationRecord
    
    validates :last_name, presence: true

    def name
        self.first_name.concat(" ".concat(self.last_name))
    end
end
