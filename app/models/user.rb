class User < ActiveRecord::Base
  has_many :permissions, :dependent => :delete_all
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :confirmed_at

  def to_s
    "#{email} (#{admin? ? "Admin" : "User"})"
  end
end
