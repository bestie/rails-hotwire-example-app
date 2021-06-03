class HotTakesController < ApplicationController
  # GET /hot_takes
  def index
    @hot_takes = HotTake.all
    @hot_take = HotTake.new
  end

  # POST /hot_takes
  def create
    @hot_take = HotTake.new(hot_take_params)

    if @hot_take.save
      redirect_to hot_takes_path
    else
      @hot_takes = HotTake.all
      render :index
    end
  end

  private
    def hot_take_params
      params.require(:hot_take).permit(:handle, :content)
    end
end
