class FixMinimumName < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :minumum_bet, :minimum_bet
  end
end
