class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  # attr_accessible :title, :body

  has_many :programs
  
  def is_admin?
    self.role == "admin"
  end
  
  def is_dj?
    self.role == "dj"
  end

  def can_edit_program?(program)
    program.user_id == self.id || self.role == "admin"
  end
end
