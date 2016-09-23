class Api::OwnersController < Api::BaseController
  def show_with_articles
    @owner = Owner.includes(:articles).find_by(name: params[:owner_name])
    render json: @owner, serializer: OwnerWithArticlesSerializer
  end

  def index
    @owners = Owner.all
    render json: @owners, each_serializer: OwnerCollectionSerializer, adapter: :json
  end
end
