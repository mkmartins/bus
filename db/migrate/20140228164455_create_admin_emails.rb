class CreateAdminEmails < ActiveRecord::Migration
  def change
    create_table :admin_emails do |t|
      t.string :name
      t.string :email
      t.string :login

      t.timestamps
    end
  end
end
