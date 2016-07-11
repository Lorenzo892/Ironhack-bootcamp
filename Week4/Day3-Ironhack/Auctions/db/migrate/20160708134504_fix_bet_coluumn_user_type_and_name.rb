class FixBetColuumnUserTypeAndName < ActiveRecord::Migration[5.0]
  def change
    change_column :bets, :user, :integer
    rename_column :bets, :user, :user_id
  end
end
