class RegionsController < ApplicationController
	before_action :set_region, only: %i[ show ] 

  # GET /feedbacks or /feedbacks.json
  def index
    @regions = Region.more_than(ENV["FEEDBACK_THRESHOLD"].to_i)
  end

  # GET /feedbacks/1 or /feedbacks/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region
      @region = Region.find(params[:id])
    end
end
