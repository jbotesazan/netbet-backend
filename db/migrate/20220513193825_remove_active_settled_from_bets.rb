class RemoveActiveSettledFromBets < ActiveRecord::Migration[7.0]
  def change
    remove_column :bets, :active_settled, :boolean
  end
end
