class UsersController < ApplicationController
  before_action :authenticate_user!

  def dashboard
  end

  def update
    @user = current_user

    if @user.update_attributes(current_user_params)
      flash[:notice] = "Cadastro atualizado com sucesso."
    else
      flash[:alert] = "Algo deu errado. Não foi possível efetuar o cadastro."
    end
    redirect_to dashboard_path

  end

  private
  
  def current_user_params
    params.require(:user).permit(:fullname, :about, :phone, :status, :organization, :image)
  end

end
