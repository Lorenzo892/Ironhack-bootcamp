class CreateBets < ActiveRecord::Migration[5.0]
  def change
    create_table :bets do |t|
      t.integer :amount
      t.integer :user
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
