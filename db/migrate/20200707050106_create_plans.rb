class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.integer :weekly_plan_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
