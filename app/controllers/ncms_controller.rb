class NcmsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ncm, only: %i[ show edit update destroy ]

  def index
    @ncms = Ncm.all.order(:codigo)
  end

  def show
  end

  def new
    @ncm = Ncm.new
  end

  def edit
  end

  def create
    @ncm = Ncm.new(ncm_params)

    respond_to do |format|
      if @ncm.save
        format.html { redirect_to @ncm, notice: "Cadastro efetuado com sucesso." }
        format.json { render :show, status: :created, location: @ncm }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ncm.errors, status: :unprocessable_entity }
      end
    end

  end

  def update

    respond_to do |format|
      if @ncm.update(ncm_params)
        format.html { redirect_to @ncm, notice: "Cadastro alterado com sucesso." }
        format.json { render :show, status: :ok, location: @ncm }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ncm.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy

    @ncm.destroy
    respond_to do |format|
      format.html { redirect_to ncm_url, notice: "Cadastro excluído com sucesso." }
      format.json { head :no_content }
    end
    
  end

  private
    
    def set_ncm
      @ncm = Ncm.find(params[:id])
    end

    def ncm_params
      params.require(:ncm).permit(:codigo, :descricao, :tipoicm, :percicm, :percipi, :percst, ).merge(user_id: current_user.id)
    end

end
