class LoginController < ApplicationController
     layout "business"
	def goto_login
	  @login = Login.where(:username =>params[:username] , :password => params[:password],:employee_type => params[:login][:usertype]).first
      if !@login.blank? && @login.employee_type == "hr"
       redirect_to :controller =>'/admin', :action=> 'show'
      elsif !@login.blank? && @login.employee_type == "employee"
       render :layout => false
      else
      	redirect_to(root_url,:notice => 'Please Enter Valid User Name/Password')
      end	 
	end
end
