class OwnerWithArticlesSerializer < OwnerSerializer
  has_many :articles
end
