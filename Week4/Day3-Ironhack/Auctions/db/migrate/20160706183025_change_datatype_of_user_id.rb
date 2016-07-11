class ChangeDatatypeOfUserId < ActiveRecord::Migration[5.0]
  def change
    def up
      change_column :bid, :user_id, :references
    end

    def down
      change_column :bid, :user_id, :integer
    end
  end
end
