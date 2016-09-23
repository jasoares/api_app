class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description

  attribute :price do
    "#{object.price.to_i}$"
  end
end
