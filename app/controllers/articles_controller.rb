class ArticlesController < ApplicationController
  def index
    @posts = Article.all
  end

  def new 
  end

  def create
    @post = Article.new(post_params)
    @post.save

    redirect_to @post
  end

  def show
    @post = Article.find(params[:id])
  end

  private
    def post_params
      params.require(:article).permit(:title, :body)
    end
end
