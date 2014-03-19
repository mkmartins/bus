 class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
     @user = User.find_for_facebook_oauth(request.env["omniauth.auth"])
     # raise @user
     # if @user.
     #  redirect_to company_select_path, notice: 'HEY, JUST ONE LITTLE THING LEFT TO DO'
     if @user.persisted?
       sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
       set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
     else
       session["devise.facebook_data"] = request.env["omniauth.auth"]
       redirect_to new_user_registration_url
     end
   end


end