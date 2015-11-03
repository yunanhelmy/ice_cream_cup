class StaticPagesController < ApplicationController
  def index
  end

  def admin
  	@users = User.order("created_at DESC");
  end

  def team
  	@teams = Team.all;
  end
end
