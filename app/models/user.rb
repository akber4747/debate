class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :responses
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

     validates :first_name, :last_name, :presence => true    

  def name=(s)
  write_attribute(:first_name, :last_name, s.to_s.titelize)
  end   
end
