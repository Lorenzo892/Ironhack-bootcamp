class FixColumnDataType < ActiveRecord::Migration[5.0]
  def change
    change_column :bets, :user, :string
  end
end
