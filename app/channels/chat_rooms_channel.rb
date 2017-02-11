class ChatRoomsChannel < ApplicationCable::Channel
	def subscribed
		stream_from "chat_rooms_#{params['chat_room_id']}_channel"
	end

	def unsubscribed
		# cleanup when channel is unsubscribed
	end

	def send_message(data)
		# process data send from page
		current_user.messages.create!(body: data['message'], chat_room_id: data['chat_room_id'])
	end
end