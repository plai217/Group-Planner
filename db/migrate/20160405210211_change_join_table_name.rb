class ChangeJoinTableName < ActiveRecord::Migration
  def change
    rename_table :plans_users, :plan_users
  end
end
