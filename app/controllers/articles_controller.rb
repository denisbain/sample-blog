class ArticlesController < ApplicationController

  before_action :authenticate_user!, :only => [:new, :create]
  def index
    @article = Article.all
  end
  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(article_params)

    if @article.valid?
      @article.save
      redirect_to @article
    else
      render action: 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render action: 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path, notice: 'Article was successfully destroyed.'
  end


  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
