class TypeitemsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_typeitem, only: [:show, :edit, :update, :destroy]

    def index
        @typeitems = Typeitem.all.order(:name)
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
            flash[:notice] = "Cadastro efetuado com sucesso."
            redirect_to typeitem_path(@typeitem)
        else
            flash[:alert] = "Algo deu errado. Não foi possível efetuar o cadastro."
            render :new
        end

    end

    def update

        if @typeitem.update(typeitem_params)
            flash[:notice] = "Cadastro atualizado com sucesso."
            redirect_to typeitem_path(@typeitem)
        else
            flash[:alert] = "Algo deu errado. Não foi possível atualizar o cadastro."
            render :new
        end

    end

    def destroy

        if @typeitem.destroy(typeitem_params)
            flash[:notice] = "Cadastro excluído com sucesso."
            redirect_to typeitem_path(@typeitem)
        else
            flash[:alert] = "Algo deu errado. Não foi possível excluir o registro."
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
