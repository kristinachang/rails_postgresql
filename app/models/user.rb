class User < ActiveRecord::Base
  self.inheritance_column = :user_type
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #has_one :trainer
  #has_one :client
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
