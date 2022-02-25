class Bet < ApplicationRecord
  belongs_to :user
  validates :bet, presence: :true
  validates :game, presence: :true
  validates :wager, presence: :true, numericality: { greater_than_or_equal_to: 5.0, less_than_or_equal_to: 500.0}
  validates :return_amount, presence: :true
  validates :odds, presence: :true
end
