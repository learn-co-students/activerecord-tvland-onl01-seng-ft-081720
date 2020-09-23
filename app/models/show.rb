class Show < ActiveRecord::Base
    belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    # binding.pry
    self.actors.collect do |ac| 
        ac.full_name
    end

  end



end