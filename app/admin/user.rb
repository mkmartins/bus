ActiveAdmin.register User do
  index do
    column :company_id
    column :email
    column :first_name
    column :last_name
    column :provider
  end 
end

# :email, :password, :password_confirmation, 
# :remember_me, :name, :uid, :provider, 
# :company_id, :first_name, :last_name