class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def supply
  end

  def financial
  end

  def sales
  end

  def registrations
    @items = Item.where(user_id: current_user.id).order(:descricao)
  end

  def shopping
  end

  def production
  end

  def reports
  end

  def simulator
  end
  
end
