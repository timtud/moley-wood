class UsersController < ApplicationController
protect_from_forgery with: :exception
  def show
    @user = current_user
  end
end
