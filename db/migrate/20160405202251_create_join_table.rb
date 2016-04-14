class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :plans do |t|
      t.index :user_id
      t.index :plan_id
    end
  end
end
