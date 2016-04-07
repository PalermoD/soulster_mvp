module UsersHelper
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def blank_img(user)
    if @user.picture.blank? 
       image_tag("default.png", class: "gravatar")
    else
      image_tag(@user.picture.url, alt: user.name, class: "gravatar")
    end
  end

end
