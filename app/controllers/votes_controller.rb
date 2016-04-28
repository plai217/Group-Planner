class VotesController < ApplicationController
  before_action :set_current_user

  def index
    @votes = @user.votes
  end

  def update
    @vote = Vote.find(params[:id])
    @vote.confirm = params[:vote][:confirm]
    @vote.save
    flash[:notice] = "Updated #{@vote.suggestion.location}"
    redirect_to(:back)
  end

end
