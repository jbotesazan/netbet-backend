class AddWinLossToBets < ActiveRecord::Migration[7.0]
  def change
    add_column :bets, :win_loss, :boolean
  end
end
