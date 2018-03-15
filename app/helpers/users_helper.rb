module UsersHelper

	# Returns the Gravatar for the given user.
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase) 	
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar", size: "200")
	end

	# Returns the date ago posted
	def posted_ago(user)
		post_time = ((Time.now - @user.created_at) / (60 * 24 * 24)).round()
	end

end
