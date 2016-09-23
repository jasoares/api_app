class OwnerSerializer < ActiveModel::Serializer
  attribute :name, key: :owner_name
end
