 class UsersController < ApplicationController 
   before_action :set_user, only: [:edit, :update, :show, :destroy]
     
     def index 
       @users = User.all
     end
     
     def new
         @user = User.new 
     end 
     
     def create
      @user = User.new(user_params)
      if @user.save
       flash[:notice] = "New user has been created."
       redirect_to user_path(@user)
      else
       #flash[:notice] = "User HAS NOT been created."
       render :new 
      end
     end
     
     def edit
     end
     
     def update 
       if @user.update(user_params)
         flash[:notice] = "User information was updated."
         redirect_to user_path(@user)
       else 
          render 'edit'
       end
     end
     
     
    def show
    end
    
    def destroy
      @user.destroy
      flash[:notice] = "User has been deleted."
      redirect_to  users_path
    end
    
   
     private
       def set_user
         @user = User.find(params[:id])
       end
       
       def user_params
        params.require(:user).permit(:name, :password)
       end
      end