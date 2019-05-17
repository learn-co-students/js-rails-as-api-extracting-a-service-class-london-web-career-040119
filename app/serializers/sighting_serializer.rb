class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at,
  belongs_to :bird
  belongs_to :location

  def show
    @sighting = Sighting.find(params[:id])
    options = {}
    options[:include] = [:bird, :location]
    render json: SightingSerializer.new(@sightings, options).serializable_hash
 end
end
