class Author < ApplicationRecord
       
    def name
        self.first_name.concat(" ".concat(self.last_name))
    end
end
