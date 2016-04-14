class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :location
      t.datetime :time
      t.integer :plan_id

      t.timestamps null: false
    end
  end
end
