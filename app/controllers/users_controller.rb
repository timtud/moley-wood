class UsersController < ApplicationController
  def show
    @users = current_user
  end
end
