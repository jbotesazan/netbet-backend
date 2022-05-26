class AddStatusToBets < ActiveRecord::Migration[7.0]
  def change
    add_column :bets, :status, :integer, default: 0
  end
end
