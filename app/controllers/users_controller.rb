class UsersController < ApplicationController
  
  def all
    @all_users = User.all
  end
  
end
