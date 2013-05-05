module UsersHelper
	#Returns the Gravatar for the given user.
	def gravatar_for(user)
		gravator_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "http://gravatar.com/avatar/#{gravator_id}"
		image_tag(gravatar_url, alt: user.name, class:"gravatar")
	end
end
