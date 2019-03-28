class PicsController < ApplicationController
    before_action :get_pic, only: [:show, :edit, :update, :destroy]

    def index
        @pics = Pic.all.order("created_at DESC")
    end 
    def show 
        @pic = Pic.find(params[:id])
    end
    def new 
        @pic = current_user.pics.build
    end
    def create 
        @pic = current_user.pics.build(pic_params)
        if @pic.save 
            flash[:notice] = "Picture was posted"
            redirect_to @pic
        else 
            render 'new'
        end
    end
    def edit 
    end
    def update 
        if @pic.save 
            flash[:notice] = "Picture was updated"
            redirect_to @pic
        else 
            render 'edit'
        end
    end
    def destroy
        @pic.destroy
        redirect_to root_path
    end
    private
    def pic_params
        params.require(:pic).permit(:title, :description)
    end
    def get_pic
        @pic = Pic.find(params[:id])
    end
end
