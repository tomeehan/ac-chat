class MessageBroadcastJob < ApplicationJob
	queue_as :default

	def perform(message)
		ActionCable.server.broadcast "chat_rooms_#{messsage.chat_room.id}_channel", message: 'MESSAGE_HTML'
	end
end