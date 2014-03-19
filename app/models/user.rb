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
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :uid, :provider, :company_id
  # attr_accessible :title, :body

  def default_cart
    self.cart ||= Cart.create
  end

   def is_admin?
    self.master?
  end

   def is_salesman?
    self.salesman?
  end

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.oauth_token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

end


# How to set a salesman or master user?
# USE RAILS COUNSEL
# EXAMPLE:
# u = User.last
# u.master = true
# u.save
#
#To define a global role:

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