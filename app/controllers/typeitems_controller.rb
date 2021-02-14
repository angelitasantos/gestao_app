class TypeitemsController < ApplicationController
    before_action :set_typeitem, only: [:show, :edit, :update]

    def index
        @typeitems = Typeitem.all
    end

    def show 
    end

    def new
        @typeitem = Typeitem.new
    end

    def edit
    end
    
    def create
        @typeitem = Typeitem.new(typeitem_params)
        if @typeitem.save
            redirect_to typeitem_path(@typeitem)
        else
            render :new
        end
    end

    def update
        @typeitem.update(typeitem_params)
        redirect_to typeitem_path(@typeitem)
    end

    private

    def set_typeitem
        @typeitem = Typeitem.find(params[:id])
    end

    def typeitem_params
        params.require(:typeitem).permit(:name)
    end

end
