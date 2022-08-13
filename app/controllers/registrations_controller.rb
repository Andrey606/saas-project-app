class RegistrationsController < Devise::RegistrationsController
  def create
    byebug
    # will be the similar to user = User.new(sign_up_params) (it is devise gem)
    build_resource(sign_up_params)

    # resource will be an instance of User
    resource.class.transaction do
      resource.save
      yield resource if block_given?
      if resource.persisted?
        @account = Account.new({ user: current_user,
                                 name: params[:account]["name"],
                                 plan: params[:account]["plan"] })
        flash[:error] = "Please check registrations errors" unless @account.valid?

        begin
          @account.save
        rescue Exception => e
          flash[:error] = e.message

          resource.destroy
          puts "Registration failed"
          render :new and return
        end

        if resource.active_for_authentication?
          set_flash_message! :notice, :signed_up
          sign_up(resource_name, resource)
          respond_with resource, location: after_sign_up_path_for(resource)
        else
          set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
          expire_data_after_sign_in!
          respond_with resource, location: after_inactive_sign_up_path_for(resource)
        end
      else
        clean_up_passwords resource
        set_minimum_password_length
        respond_with resource
      end
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:account)
  end
end