class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :username
      t.integer :password
      t.string :employee_type

      t.timestamps
    end
  end
end
