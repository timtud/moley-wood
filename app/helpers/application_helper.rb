module ApplicationHelper
  def user_avatar(user)
    if user.profile_picture.present?
      return user.profile_picture.path
    elsif user.facebook_picture_url.present?
      return user.facebook_picture_url
    else
      return "https://image.flaticon.com/icons/png/512/78/78373.png"
    end
  end
end
