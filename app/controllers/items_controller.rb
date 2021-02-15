class ItemsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_item, only: [:show, :edit, :update, :destroy]

    def index
        @items = Item.all.order(:descricao)
    end

    def show 
    end

    def new
        @item = Item.new
    end

    def edit
    end
    
    def create

        @item = Item.new(item_params)

        if @item.save
            flash[:notice] = "Cadastro efetuado com sucesso."
            redirect_to item_path(@item)
        else
            flash[:alert] = "Algo deu errado. Não foi possível efetuar o cadastro."
            render :new
        end

    end

    def update

        if @item.update(item_params)
            flash[:notice] = "Cadastro atualizado com sucesso."
            redirect_to item_path(@item)
        else
            flash[:alert] = "Algo deu errado. Não foi possível atualizar o cadastro."
            render :new
        end

    end

    def destroy

        if @item.destroy(item_params)
            flash[:notice] = "Cadastro excluído com sucesso."
            redirect_to item_path(@item)
        else
            flash[:alert] = "Algo deu errado. Não foi possível excluir o registro."
            render :new
        end
        
    end

    private

    def set_item
        @item = Item.find(params[:id])
    end

    def item_params
        params.require(:item).permit(:descricao, :tipo, :typeitem_id, :category_id, :unmed_id, 
                                    :ncm_id, :estseg, :leadtime, :altura, :comprimento, 
                                    :largura, :pesobruto, :pesoliquido, :lastro, :camada)
                                    .merge(user_id: current_user.id)
    end

end
