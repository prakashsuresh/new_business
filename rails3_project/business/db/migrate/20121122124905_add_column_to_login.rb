class AddColumnToLogin < ActiveRecord::Migration
  def change
    add_column :logins, :gender_id, :integer
    add_column :logins, :blood_group_id, :integer
    add_column :logins, :region_id, :integer
    add_column :logins, :nationality_id, :integer
  end
end
