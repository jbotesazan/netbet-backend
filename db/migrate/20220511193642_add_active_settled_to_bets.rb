class AddActiveSettledToBets < ActiveRecord::Migration[7.0]
  def change
    add_column :bets, :active_settled, :boolean
  end
end
