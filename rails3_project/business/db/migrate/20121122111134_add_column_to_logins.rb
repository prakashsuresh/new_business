class AddColumnToLogins < ActiveRecord::Migration
  def change
    add_column :logins, :emp_id, :integer
    add_column :logins, :adress, :string
    add_column :logins, :phone_no, :integer
    add_column :logins, :dob, :date
    add_column :logins, :admission_date, :date
    add_column :logins, :basic_salary, :integer
    add_column :logins, :bank_acc_no, :integer
    add_column :logins, :resume, :string
    add_column :logins, :gender_id, :integer
    add_column :logins, :blood_group_id, :integer
    add_column :logins, :region_id, :integer
    add_column :logins, :nationality_id, :integer
  end
end
