class LoginController < ApplicationController
  def login
     session[:user_id] = nil
	 if request.post?
	    user=User.authenticate(params[:userid], params[:password])
		if user
		   session[:user_id] = user.id
		   redirect_to(:action => "index")
		else
		   flash[:notice] = "Invalid user/password combination"
		end
     end
  end
  
  def logout
     session[:user_id] = nil
	 flash[:notice] = "Logged out"
	 redirect_to(:action => "login")
  end
end
