class UsersController < ApplicationController
  before_action :authenticate_user!

  def dashboard
  end

  def update
    @user = current_user

    if @user.update_attributes(current_user_params)
      flash[:notice] = "Saved successfully"
    else
      flash[:alert] = "Opps something went wrong! Did not update."
    end
    redirect_to dashboard_path
  end

  private
  def current_user_params
    params.require(:user).permit(:fullname, :about, :phone, :status, :organization, :image)
  end

end
