class TurboOptimizedHotTakesController < ApplicationController
  # GET /hot_takes
  def index
    @hot_takes = HotTake.all
    @hot_take = HotTake.new
  end

  # POST /hot_takes
  def create
    @hot_take = HotTake.new(hot_take_params)

    if @hot_take.save
      append_new_row_update = turbo_stream.append(
        :hot_takes_list,
        partial: "hot_take_item",
        locals: { hot_take: @hot_take }
      )

      replace_form_update = turbo_stream.replace(
        :hot_take_form,
        partial: "form",
        locals: { hot_take: HotTake.new },
      )

      render(turbo_stream: [
        append_new_row_update,
        replace_form_update,
      ])
    else
      replace_form_update = turbo_stream.replace(
        :hot_take_form,
        partial: "form",
        locals: { hot_take: @hot_take }
      )

      render(turbo_stream: replace_form_update)
    end
  end

  private
    def hot_take_params
      params.require(:hot_take).permit(:handle, :content)
    end
end
