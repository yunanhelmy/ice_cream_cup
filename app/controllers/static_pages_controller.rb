class StaticPagesController < ApplicationController
  def index
  end

  def admin
  	# @users = User.order("created_at DESC").page(params[:page]).per_page(5)
  	@users = User.page(params[:page]).per_page(5)
  end

  def team
  	@teams = Team.all;
  end
end
