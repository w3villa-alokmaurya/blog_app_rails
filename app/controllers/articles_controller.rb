class ArticlesController < ApplicationController
    def index
        @Article = Article.all
    end

    def show
        @Article = Article.find_by(slug: params[:slug])
        if !@Article
            redirect_to "/articles"
        else
            @Article
        end
    end

    def create
        @Article = Article.new(article_params)
        if @Article.save
            redirect_to "/articles", notice: "Article was successfully created."
          else
            render :new, notice: "Not created"
          end
    end
    def new
        @Article = Article.new
    end
    def edit
        @Article = Article.find_by(slug: params[:slug])
    end

    def update
        @Article = Article.find_by(slug: params[:slug])
        @updated=@Article.update(article_params)
        if @updated
            redirect_to "/articles", notice: "Updated Successfully"
        else
           render @Article, notice: "Please try again"
        end
    end

    def destroy
        @Article = Article.find_by(id: params[:id])
        @Article.destroy
            redirect_to "/articles"
    end

    def article_params
        params.require(:article).permit(:title, :body, :featured_image, :tags, :category_id, :user_id, :isPublished)
      end
end
