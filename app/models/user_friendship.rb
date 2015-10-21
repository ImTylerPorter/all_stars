class UserFriendship < ActiveRecord::Base
	belongs_to :user
	belongs_to :friend, class_name: 'User', foreign_key: 'friend_id'

def new
  if params[:friend_id]
    @friend = User.where(params[:friend_id])
    @user_friendship = current_user.user_friendship.new(friend: @friend)
  else
    flash[:error] = "Friend Required"
  end
end
end
