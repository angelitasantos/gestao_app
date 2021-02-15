class UnmedsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_unmed, only: [:show, :edit, :update, :destroy]

    def index
        @unmeds = Unmed.all.order(:descricao)
    end

    def show 
    end

    def new
        @unmed = Unmed.new
    end

    def edit
    end
    
    def create

        @unmed = Unmed.new(unmed_params)

        if @unmed.save
            flash[:notice] = "Cadastro efetuado com sucesso."
            redirect_to unmed_path(@unmed)
        else
            flash[:alert] = "Algo deu errado. Não foi possível efetuar o cadastro."
            render :new
        end

    end

    def update

        if @unmed.update(unmed_params)
            flash[:notice] = "Cadastro atualizado com sucesso."
            redirect_to unmed_path(@unmed)
        else
            flash[:alert] = "Algo deu errado. Não foi possível atualizar o cadastro."
            render :new
        end

    end

    def destroy

        if @unmed.destroy(unmed_params)
            flash[:notice] = "Cadastro excluído com sucesso."
            redirect_to unmed_path(@unmed)
        else
            flash[:alert] = "Algo deu errado. Não foi possível excluir o registro."
            render :new
        end
        
    end

    private

    def set_unmed
        @unmed = Unmed.find(params[:id])
    end

    def unmed_params
        params.require(:unmed).permit(:abreviacao, :descricao)
    end
  
end
