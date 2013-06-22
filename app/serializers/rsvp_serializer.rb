class RsvpSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :num_persons, :special, :will_attend
end
