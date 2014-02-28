class ContactMailer < ActionMailer::Base
  default :to => Admin.all.map(&:email),
          :from => "contact@storkly.com"

  layout "email_template"

  def contact(message)
    @message = message
    mail to: "contact@storkly.com", subject: " #{@message.name} | #{@message.topic}", from: @message.email
  end

end
