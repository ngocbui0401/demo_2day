module UsersHelper
  def gravatar_for(user, size="30")
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    if !size.nil?
    	image_tag(gravatar_url, alt: user.name, class: "gravatar", style: "width: #{size}")
    else
    	image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end
  end
end