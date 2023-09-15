class CategoryController < ApplicationController
    def index
        @Category = Category.all
    end

    def show
        @Category = Category.find(params[:id])
        if !@Category
            redirect_to "/categories"
        else
            @Category
        end
    end

    def create
        @Category = Category.new(category_params)
        if @Category.save
            redirect_to "/categories", notice: "Category was successfully created."
          else
            render :new, notice: "Not created"
          end
    end
    def new
        @Category = Category.new
    end

    def edit
        @Category = Category.find_by(id: params[:id])
    end

    def update
        @Category = Category.find_by(id: params[:id]).update(category_params)
        redirect_to "/categories", notice: "Updated Successfully"
    end


    def destroy
        @Category = Category.find_by(id: params[:id])
        @Category.destroy
        redirect_to "/categories"
    end


    def category_params
        params.require(:category).permit(:category_title)
      end
end
