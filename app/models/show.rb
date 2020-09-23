class Show < ActiveRecord::Base
  has_many :characters 
  belongs_to :network

  def actors_list
    characters.collect do |c|
        "#{c.actor.full_name}"
    end
  end
end