class ArticleWithOwnerSerializer < ArticleSerializer
  attributes :owner_name

  def owner_name
    object.owner.name
  end
end
