class User < ActiveRecord::Base
  rolify
  belongs_to :company
  has_one :cart
  has_many :orders

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :uid, :provider, :company_id, :first_name, :last_name

  def default_cart
    self.cart ||= Cart.create
  end

  #  def is_admin?
  #   self.master?
  # end

  #  def is_salesman?
  #   self.salesman?
  # end


  def self.find_for_facebook_oauth(auth)

     facebook_attributes = { provider: auth.provider, uid: auth.uid, email: auth.info.email, password: Devise.friendly_token[0,20], first_name: auth.info.first_name, last_name: auth.info.last_name }
 
     if user = User.where(provider: auth.provider, uid: auth.id).first
       user.update_attributes(facebook_attributes)
       user
     elsif user = User.find_by_email(auth.info.email)
       user.update_attributes(facebook_attributes)
       user
     else
       user = User.create(facebook_attributes)
     end
   end


end


# How to set a salesman or master user?
# USE RAILS COUNSEL
#with rolify
# user = User.find(1)
# user.add_role :admin
# To define a role scoped to a resource instance

# user = User.find(2)
# user.add_role :moderator, Forum.first
# To define a role scoped to a resource class

# user = User.find(3)
# user.add_role :moderator, Forum
# That's it !