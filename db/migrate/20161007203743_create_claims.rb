class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.integer :user_id
      t.integer :week
      t.string  :player_add
      t.string  :player_drop
      t.decimal :bid_amount
    end
  end
end
