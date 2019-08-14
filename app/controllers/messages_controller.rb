class MessagesController < ApplicationController
  def index
    messages = Message.all.order(:id)
    render :json => messages
  end

  def create
    message = Message.create(sender: params[:sender], message: params[:message])
    render :json => message
  end
end
