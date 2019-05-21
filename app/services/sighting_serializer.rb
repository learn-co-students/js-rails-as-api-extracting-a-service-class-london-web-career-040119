# Creating a serice class to handle some of the business logic of the application. Looking to handle the logic of arranging our JSON data the way we want it 
class SightingSerializer


    def initialize(sighting_object)
    @sighting = sighting_object
  end
   
  def to_serialized_json
    @sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only => [:latitude, :longitude]}}, :except => [:updated_at])
  end
   
  end