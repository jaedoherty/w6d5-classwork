class CatsController < ApplicationController
    def index
       @cats = Cats.all
       render :index
    end

    def show
        @cat = Cat.find(params[:id])
        render :show
    end

private 
    def cat_prams
        prams.require(:cat).permit(:birthdate, :color, :name, :sex, :description)
    end
end