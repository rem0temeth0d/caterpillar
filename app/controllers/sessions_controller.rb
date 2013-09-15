class SessionsController < ApplicationController
  
  def new
    
  end

  def create
  end
  def login
#    if(params[:user] == nil) 
#      puts "Plain Redirect" + params[:user].to_s
#      redirect_to ("/signin")
#    else
      user = User.where(name: params[:user][:name], password_digest: params[:user][:password_digest])
       if user.name == params[:user][:name]
         puts "Login Success"
         session[:user_id] = user[:id]
         redirect_to (scenarios_path)
       else 
         puts "Login Failure"
         flash[:notice] = "Sorry! User name or password didn't match."
         redirect_to ("/signin")   
       end
#    end
  end
  def signin
    @user = User.new
    
    respond_to do |format|
       format.html # signin.html.erb
     end
  end

  def destroy
  end
end
