class AdminEmailsController < ApplicationController
  
  def create
    @admin = AdminMailer.new(params[:admin])
 
    respond_to do |format|
      if @admin.save
        
        AdminMailer.notification_email(@admin).deliver
 
        format.html { redirect_to(@admin, :notice => 'User was successfully created.') }
        format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end



end