class CreateBets < ActiveRecord::Migration[7.0]
  def change
    create_table :bets do |t|
      t.string :bet
      t.string :game
      t.float :wager
      t.float :return_amount
      t.integer :odds
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
