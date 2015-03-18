class User < ActiveRecord::Base
  attr_accessible :user, :age, :email
  
  def create_new
    @user = User.create({user: params[:name], age:params[:age], email:params[:email]})
  end
  
end