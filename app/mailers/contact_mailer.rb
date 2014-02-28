class ContactMailer < ActionMailer::Base

  layout "email_template"

  def contact(contact_us)
    @contact_us = contact_us
    mail to: "jillairei@gmail.com", subject: "#{@contact_us.name} | #{@contact_us.subject}", from: @contact_us.email
  end

end
