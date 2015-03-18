
class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user=User.find(params[:id])
  end

  def new
    @user=User.new
  end
  
  def create
     @user = User.new({user: params[:user], age: params[:age], email: params[:email]})
     if @user.save
       redirect_to "/users/index"
     else
       render "new"
     end
  end
                  
  def edit
    @user=User.find(params[:id])
  end
  
  def update
    @user=User.update
  end
end