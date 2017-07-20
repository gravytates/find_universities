require 'jwt'

class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews

  def encrypt(current_user)
    token = JWT.encode( {user_id: current_user}, "HS256")
  end
end
