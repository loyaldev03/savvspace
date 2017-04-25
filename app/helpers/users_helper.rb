module UsersHelper
  def profile_image(user)
    if user && user.profile.avatar
      cl_image_tag(user.profile.avatar.path, {size: '35x35', crop: :thumb, gravity: :face, quality: :auto, class: "img-rounded"})
    else
      image_tag("blank-profile.png", height: 33, class: "img-rounded")
    end
  end

  def user_profile_vendorships(user)
    user.is_role_for_what("owner", Vendor)
  end
end
