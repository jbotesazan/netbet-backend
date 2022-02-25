class BetSerializer < ActiveModel::Serializer
  attributes :id, :bet, :odds, :game, :wager, :return_amount
  belongs_to :user
end
