class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = @message.users.new(params[:id])
    if @message.save
    redirect_to message_path(@message)
    else
      render 'messages/show'
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def message_params
    params.require(:message).permit(:body, :date, :user_id, :foodtruck_id)
  end

end

