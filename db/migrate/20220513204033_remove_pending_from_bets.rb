class RemovePendingFromBets < ActiveRecord::Migration[7.0]
  def change
    remove_column :bets, :pending, :integer
  end
end
