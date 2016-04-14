class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :confirm
      t.integer :user_id
      t.integer :suggestion_id

      t.timestamps null: false
    end
  end
end
