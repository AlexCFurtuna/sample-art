class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
     :recoverable, :rememberable, :trackable, :validatable,
     :lockable
  has_many :orders
  has_many :comments

  def full_name
    "#{first_name} #{last_name}"
  end
  
end
