class UserNotifier < ApplicationMailer
	default from: "hello@cleverladder.com"

	def friend_requested(user_friendship_id)
		user_friendship = UserFriendship.find(user_friendship_id)

		@user = user_friendship.user
		@friend = user_friendship.friend

		mail to: @friend.email,
				 subject: "#{user.first_name} wants to be friends on All-Stars"

	end
end
