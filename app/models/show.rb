class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def build_network(call)
        network = Network.create(call)
        network.shows << self
        network
    end

    def actors_list
        self.actors.collect do |actor|
            "#{actor.first_name} #{actor.last_name}"
        end
    end
end