class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        [first_name, last_name].join(" ")
        # binding.pry
    end

    def list_roles
        # Character.where(actor_id: self.id)
        # Character.joins(:shows).where(actor_id: self.id).select("actors.name")
       self.characters.collect{|ch| "#{ch.name} - #{ch.show.name}"}

    end


  
end