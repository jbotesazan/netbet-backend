class RemoveStatusFromBets < ActiveRecord::Migration[7.0]
  def change
    remove_column :bets, :status, :integer
  end
end
