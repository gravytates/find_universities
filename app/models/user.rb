require 'jwt'

class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews

  def encrypt(current_user)
    token = JWT.encode( {user_id: current_user.id}, "HS256")
  end

  def decrypt(token)
    token_decrypted = JWT.decode(token, "HS256")
    user_id = token_decrypted[0]['user_id']


  end
end
