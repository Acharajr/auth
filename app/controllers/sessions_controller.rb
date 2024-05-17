class SessionsController < ApplicationController
  def new
    # render login form in sessions/new.html.erb
  end

  def create
    @user = User.find_by({"email" => params["email"]})
    if @user != nil
      if 
        @user ["password"] == params["password"]
      else
        flash["notice"] = "Nope."
        redirect_to "/login"

      end
  
    else
      flash["notice"] = "Nope."
      redirect_to "/login"

    end
   
    
  end

  def destroy
    # logout the user
    flash["notice"] = "Goodbye."
    redirect_to "/login"
  end
end
