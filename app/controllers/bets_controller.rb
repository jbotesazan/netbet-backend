class BetsController < ApplicationController

    def index
        # puts @current_user.id
        # puts 'look here'
        bets = @current_user.bets
        render json: bets, status: :ok
    end

    def create
        # bet = Bet.new(bet_params)
        bet = Bet.new(bet_params)
        if bet.valid?
            bet.save
            @current_user.update!(balance: (@current_user.balance - bet.wager))
            render json: bet, status: :created
        else
            render json: { errors: bet.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        bets = Bet.where(status: Bet.statuses[:pending])
        bets.each do |bet|
            [true, false].sample ? bet.status_lost! : bet.status_won!
            if bet.status_won?
                @current_user.update!(balance: (@current_user.balance + bet.return_amount))
                render json: bet, status: :accepted
            elsif bet.status_lost?
                render json: bet, status: :ok
            else
                render json: { errors: bet.errors.full_messages }, status: :unprocessable_entity
            end
        end
    end

    private

    def bet_params
        params.permit(:id, :bet, :game, :wager, :return_amount, :odds, :status, :user_id)
    end
end
