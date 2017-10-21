class UsersController < ApplicationController
	  def new
  		@user = User.new
  	end

  	def show
      @user = User.find(current_user.id)
  	end

    def edit
      p @user_edit = User.find(params[:id])
    end

  	def create
    	@user = User.new(user_params)
    	if @user.save
        last = User.last
        if current_user
          redirect_to index_url
        else
    		  log_in @user
      		flash[:success] = "Welcome!"
      		redirect_to @user
        end
    	else
      		render 'new'
    	end
  	end

    def update
      if User.find(params[:id].to_i).email == params[:user][:email]
        User.update(params[:id].to_i, 
                    name: params[:user][:name],
                    phone_number: params[:user][:phone_number])
      else
        User.update(params[:id].to_i, 
                    name: params[:user][:name],
                    phone_number: params[:user][:phone_number],
                    email: params[:user][:email])
      end
      render :controller => 'user', :action => 'registred' 
    end


	private

    	def user_params
      		params.require(:user).permit(:name, :email, :phone_number, :password,
                                   :password_confirmation, :admin)
    	end

end
