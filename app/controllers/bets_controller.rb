class BetsController < ApplicationController

    def index
        bets = Bet.all
        render json: bets, status: :ok
    end

    def create
        # bet = Bet.new(bet_params)
        bet = @current_user.bets.new(bet_params)
        if bet.valid?
            bet.save
            render json: bet, status: :created
        else
            render json: {errors: bet.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def bet_params
        params.permit(:bet, :game, :wager, :return_amount, :odds, :user_id)
    end
end
