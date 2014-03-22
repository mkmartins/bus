 class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
     @user = User.find_for_facebook_oauth(request.env["omniauth.auth"])
     if @user.persisted?
       sign_in(@user)
       if @user.company_id == nil
       redirect_to edit_user_path(@user), notice: 'Signed in successfully.' #this will throw if @user is not activated
       set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
     else
       session["devise.facebook_data"] = request.env["omniauth.auth"]
       redirect_to new_user_registration_url
     end
     end
   end


end

# the idea is:   
# if current_user has @user.company_id(@user) == nil redirect to edit_user_path else redirect to root_path(=home) 
