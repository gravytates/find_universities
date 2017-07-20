class HomeController < ApplicationController
  def index
    current_user.encrypt(current_user)
  end
end
