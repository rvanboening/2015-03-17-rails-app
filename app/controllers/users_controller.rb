class UsersController < ApplicationController
    def index
      @users = User.all
    end

    def new
      @user=User.new
    end
  
    def create
       @user = User.new(params[:users])
       if @user.save
         redirect_to "/users"
       else
         render "new"
       end
    end
    
    def show
      @user=User.find(params[:id])
    end
                  
    def edit
      @user=User.find(params[:id])
    end
  
    def update
      @user = User.find params[:id]
         if @user.update_attributes(params[:users])
           redirect_to "/users"
         end
    end
    
    def destroy
      User.delete_all("id = '#{params[:id]}'")
      redirect_to "/users"
    end
end
