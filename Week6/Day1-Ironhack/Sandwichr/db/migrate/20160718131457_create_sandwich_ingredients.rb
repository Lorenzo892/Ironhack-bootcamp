class CreateSandwichesIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :sandwiches_ingredients do |t|
      t.integer :idsandwich
      t.integer :idingredient

      t.timestamps
    end
  end
end
