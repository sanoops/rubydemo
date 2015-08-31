class ArticlesController < ApplicationController
	def new
	end

	def create
		# @article = Article.new(params.require(:article).permit(:title, :text))
		@article = Article.new(article_params)

		@article.save
		redirect_to @article
	end



	def show
		puts "----"
		puts params[:id]
		# @article = Article.find(params[:id])
		@article = Article.find('5')
		puts @article
	end

	def new
	end
	
	private
		def article_params
			params.require(:article).permit(:title, :text)
		end
end
