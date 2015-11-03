class UsersController < ApplicationController
  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
    if @user.update(edit_params)
      redirect_to admin_page_path, notice: 'User has been updated!'
    else
      render :edit
    end
  end
end
