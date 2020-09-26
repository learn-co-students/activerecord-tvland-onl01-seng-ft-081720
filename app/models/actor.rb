require 'pry'

class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        first = self.first_name
        last = self.last_name
        full_name = first + " " + last
    end

    def list_roles
        self.characters.map { |char| "#{char.name} - #{char.show.name}"}
    end

  
end