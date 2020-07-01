class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.string :name
      t.float :amount
      t.string :cut_style

      t.timestamps
    end
  end
end
