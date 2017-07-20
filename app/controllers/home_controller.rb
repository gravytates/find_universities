class HomeController < ApplicationController
  def index
    token = current_user.encrypt(current_user)
    current_user.decrypt(token)
  end
end
