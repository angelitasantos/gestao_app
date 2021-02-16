class NcmsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ncm, only: %i[ show edit update destroy ]

  # GET /ncms or /ncms.json
  def index
    @ncms = Ncm.where(user_id: current_user.id).order(:codigo)
  end

  # GET /ncms/1 or /ncms/1.json
  def show
  end

  # GET /ncms/new
  def new
    @ncm = Ncm.new
  end

  # GET /ncms/1/edit
  def edit
  end

  # POST /ncms or /ncms.json
  def create
    @ncm = Ncm.new(ncm_params)

    respond_to do |format|
      if @ncm.save
        format.html { redirect_to @ncm, notice: "Ncm was successfully created." }
        format.json { render :show, status: :created, location: @ncm }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ncm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ncms/1 or /ncms/1.json
  def update
    respond_to do |format|
      if @ncm.update(ncm_params)
        format.html { redirect_to @ncm, notice: "Ncm was successfully updated." }
        format.json { render :show, status: :ok, location: @ncm }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ncm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ncms/1 or /ncms/1.json
  def destroy
    @ncm.destroy
    respond_to do |format|
      format.html { redirect_to ncms_url, notice: "Ncm was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ncm
      @ncm = Ncm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ncm_params
      params.require(:ncm).permit(:codigo, :descricao, :tipoicm, :percicm, :percipi, :percst, :user_id).merge(user_id: current_user.id)
    end
end
