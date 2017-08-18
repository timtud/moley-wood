class RegistrationsController < Devise::RegistrationsController
  protected

  def update_resource(resource, params)
    if current_user.provider == "facebook"
      params.delete("current_password")
      resource.update_without_password(params)
    else
      resource.update_with_password(params)
    end
  end


    def after_update_path_for(resource)
      user_path(resource)
    end
end
