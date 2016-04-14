class SuggestionsController < ApplicationController

  def show
    find_suggestion
  end

  def new
    @plan = Plan.find(params[:plan_id])
    @suggestion = Suggestion.new
  end

  def create
    @suggestion = Suggestion.create(suggestion_params)
    @suggestion.add_votes
    @suggestion.save
    redirect_to '/'
  end

  private
  def find_suggestion
    @suggestion = Suggestion.find(params[:id])
  end

  def suggestion_params
    params.require(:suggestion).permit(:location, :time, :plan_id)
  end
end
