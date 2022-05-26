class RemoveWinLossFromBets < ActiveRecord::Migration[7.0]
  def change
    remove_column :bets, :win_loss, :boolean
  end
end
