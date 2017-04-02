class TicketMessagesController < ApplicationController
  def create
    @ticket = Ticket.find(params[:ticket_id])
    @ticket_message = @ticket.ticket_messages.new(ticket_message_params)
    @ticket_message.user_id = current_user.id
    if @ticket_message.save
      redirect_to ticket_path(@ticket)
    else
      raise @ticket_message.errors.inspect
    end
  end

  private
    def ticket_message_params
      params.require(:ticket_message).permit(:message)
    end
end