class BetSerializer < ActiveModel::Serializer
  attributes :id, :bet, :game, :wager, :return_amount, :odds, :status, :user_id
  belongs_to :user
end
