class SightingSerializer
    include FastJsonapi::ObjectSerializer
    attributes :created_at
    belongs_to :bird
    belongs_to :location
  end

# Adding Relationships
# Object relationships can be included in serializers in two steps. The first step is that we include the relationships we want
#  to reflect in our serializers. We can do this in the same way that we include them in the models themselves.
#      A sighting, for instance, belongs to a bird and a location, so we can update the serializer to reflect this: