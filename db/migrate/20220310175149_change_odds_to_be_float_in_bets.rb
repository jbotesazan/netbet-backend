class ChangeOddsToBeFloatInBets < ActiveRecord::Migration[7.0]
  def change
    change_column :bets, :odds, :float
  end
end
