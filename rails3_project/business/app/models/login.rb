class Login < ActiveRecord::Base
  attr_accessible :employee_type, :password, :username , :emp_id, :dob, :adress, :phone_no, :email, :gender_id, :blood_group_id, :region_id, :nationality_id, :admission_date, :basic_salary, :bank_acc_no, :resume
end
