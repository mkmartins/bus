class AdminEmail < ActiveRecord::Base
  attr_accessible :email, :login, :name
end
