App.global_chat = App.cable.subscriptions.create {
		channel: "ChatRoomsChannel"
		chat_room_id: ''
	},
	connected: ->
		# called when subscription is ready for use on server

	disconnected: -> 
	  # called when subscription has been terminated by server

  received: (data) ->
    # data received

  send_message: (message, chat_room_id) ->
    @perform 'send_message', message: message, chat_room_id: chat_room_id

    