class SpacesController < ApplicationController
    before_action :set_space, only: [:show, :edit, :update, :destroy]

    def index
        @spaces = Space.all
    end

    def show
       
    end
    

    def new
        @space = Space.new
    end

    def create
        @space = Space.new(space_params)
            if @space.save
                flash[:success] = "Space has been created."
                redirect_to spaces_url
            else
                flash[:alert] = "Space has not been created."
            render 'new'
        end
    end

    private

    def set_space
        @space = Space.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        flash[:alert] = 'The space you were looking for could not be found.'
        redirect_to spaces_path
    end

    def space_params
        params.require(:space).permit(:title, :category, :phone, :location, :description)
    end
    
    
end
