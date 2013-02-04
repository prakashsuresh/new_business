class AdminController < ApplicationController
	layout 'admin'
	def show
		@emp_id = Login.where('emp_id is not null').last
        @inc_val = @emp_id.emp_id + 1      
		@gender=Gender.find(:all)
		@nationlities=Nationality.find(:all)
		@region=Region.find(:all)
		@blood_group=BloodGroup.find(:all)
	end
	def save
	
@logins = Login.new({:emp_id => params[:employee_detail][:emp_id], 
:username =>params[:employee_detail][:username],
:employee_type => params[:employee_detail][:employee_type], 
:dob => params[:employee_detail][:dob], 
:adress =>params[:employee_detail][:adress], 
:phone_no => params[:employee_detail][:phone_no], 
:email => params[:employee_detail][:email], 
:password => params[:employee_detail][:password], 
:gender_id =>params[:employee_detail][:gender_id], 
:blood_group_id => params[:employee_detail][:blood_group_id], 
:region_id => params[:employee_detail][:region_id], 
:nationality_id =>params[:employee_detail][:nationality_id], 
:admission_date => params[:employee_detail][:admission_date], 
:basic_salary => params[:employee_detail][:basic_salary], 
:bank_acc_no => params[:employee_detail][:bank_acc_no], 
:resume => params[:employee_detail][:resume]}
)	
@logins.save
		render :layout => false
	end

end
