class UserMailer < ActionMailer::Base
  default from: "noreply@storkly.com"

  def welcome_email(user)
    @user = user
    @url = "http://storkly.com/login"
    mail(:to => user.email, :subject => "Storkly Welcomes Your Hunger")
  end
end
