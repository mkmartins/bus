class UsersController < ApplicationController

  def index
    @users = User.all
  end
 def new
    @user = User.new
    @companies = Company.all.sort.collect { |company| [company.name, company.id] }
    @company = @company.build_company
 end
end