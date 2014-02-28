class ContactEmailsController < ApplicationController
  # GET /contact_emails
  # GET /contact_emails.json
  def new
    @contact_email = ContactMailer.new
  end

  def create
    @contact_email = ContactMailer.new(params[:contact_email])
    if @contact_email.valid?
      ContactMailer.contact_me(@contact_email).deliver
      redirect_to root_path, notice: "Thank you, we received your message."
    else
      flash.now.alert = "Message didn't go through"
      render "new"
    end
  end
end
