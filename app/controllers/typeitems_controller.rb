class TypeitemsController < ApplicationController
    before_action :set_typeitem, only: [:show, :edit, :update, :destroy]

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
            flash[:notice] = "Saved successfully"
            redirect_to typeitem_path(@typeitem)
        else
            flash[:alert] = "Opps something went wrong! Did not update."
            render :new
        end

    end

    def update

        if @typeitem.update(typeitem_params)
            flash[:notice] = "Saved successfully"
            redirect_to typeitem_path(@typeitem)
        else
            flash[:alert] = "Opps something went wrong! Did not update."
            render :new
        end

    end

    def destroy

        if @typeitem.destroy(typeitem_params)
            flash[:notice] = "Saved successfully"
            redirect_to typeitem_path(@typeitem)
        else
            flash[:alert] = "Opps something went wrong! Did not update."
            render :new
        end
        
    end

    private

    def set_typeitem
        @typeitem = Typeitem.find(params[:id])
    end

    def typeitem_params
        params.require(:typeitem).permit(:name)
    end

end
