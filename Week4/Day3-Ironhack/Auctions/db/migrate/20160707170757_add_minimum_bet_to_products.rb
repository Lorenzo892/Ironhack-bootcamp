class AddMinimumBetToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :minumum_bet, :integer
  end
end
