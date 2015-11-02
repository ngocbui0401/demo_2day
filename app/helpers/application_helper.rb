module ApplicationHelper
	def full_title (page_title = '')
		base_title = "Ruby on Rails Tutorial NgocNep App"
		if page_title.empty?
			base_title
		else
			page_title+"|"+ base_title
			end
		end
		 def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def content_str(str, length=15)
    	lst_str = str.split
    	if lst_str.length > length
    		lst_str[0..14].join(' ')
    	else
    		str
    	end
    end
end
