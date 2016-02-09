class ArticlesController < ApplicationController
  
  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(articles_params)
  	@article.save
  	redirect_to articles_show(@article)
  end

  private
  def articles_param
  	params.require(:article).permit(:title, :description)
  end

end