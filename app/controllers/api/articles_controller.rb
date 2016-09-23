class Api::ArticlesController < Api::BaseController
  def show
    @article = Article.includes(:owner).find(params[:id])
    render json: @article, serializer: ArticleWithOwnerSerializer
  end
end
