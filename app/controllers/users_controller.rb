class UsersController < ApplicationController
  before_action :set_current_user

  def index
    @users = User.all
  end

  def show
  end

end
