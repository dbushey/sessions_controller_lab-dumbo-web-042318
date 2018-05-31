class SessionsController < ApplicationController

  def new
  end

  def create
    puts params.inspect
    if params[:name].nil?
      redirect_to login_path
    elsif params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    #session.delete :name
    session[:name] = nil
    redirect_to login_path
  end

end



# if !:name.nil?
#   session[:name] = params[:name]
#   redirect_to '/'
# else
#   redirect_to login_path
# end
