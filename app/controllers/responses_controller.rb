class ResponsesController < ApplicationController
  def index
  end

  def new
  end

  def destroy
  end

  def update
  end

  def create
    @response = Response.new(response_params)
    if @response.save
      redirect_to topic_path(response_params[:topic_id])
    else
      redirect_to topic_path(response_params[:topic_id])
    end
  end

  def edit
  end

  def show
    @all_responses = Response.find_by(topic_id: response_params[:topic_id])
      redirect_to topic_path(response_params[:topic_id])

  end

  private

  def response_params
    params.require(:response).permit(:id, :description, :next_steps, :topic_id, :updated_at)
  end

end
