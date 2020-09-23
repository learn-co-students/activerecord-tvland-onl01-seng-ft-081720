class Actor < ActiveRecord::Base
    has_many :characters 
    has_many :shows, through: :characters 

    def full_name
        "#{first_name} #{last_name}"
    end

    def list_roles
        result=""
        self.characters.each {|char| result+= "#{char.name} - "}
        self.shows.each {|show| result += show.name}
        result.split("**")
    end
end