class Status < ActiveRecord::Base

	belongs_to :user

	valitdates :content, presence: true,
						 length: { minimum: 2 }

	valitdates :user_id, presence: true
	
end
