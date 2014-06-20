class TopicsController < ApplicationController
  def index
    @all_topics = Topic.all
    @user = current_user
    @all_topics = Topic.all
    @responses = Response.all
  end

  def new
  end

  def destroy
  end

  def update
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def edit
  end

  def show
    @topic = Topic.find(params[:id])
    @all_responses = Response.find_by(topic_id: @topic.id)

  end
  private
  def topic_params
    params.require(:topic).permit(:id, :topic)
  end


end
