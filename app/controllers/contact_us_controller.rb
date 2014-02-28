class ContactUsController < ApplicationController

  def new
    @contact_us = ContactUs.new
  end

  def create
    @contact_us = ContactUs.new(params[:contact_us])
    if @contact_us.valid?
      ContactMailer.contact(@contact_us).deliver
      redirect_to root_path, notice: "Thank you, we received your message."
    else
      flash.now.alert = "Message didn't go through"
      render "new"
    end
  end

end
