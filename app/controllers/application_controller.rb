class ApplicationController < ActionController::API
    before_action :authorize
    include ActionController::Cookies


    private

    def authorize
        @current_user = User.find_by(id: session[:user_id])
        bets = @current_user.bets.where(status: Bet.statuses[:pending])
        bets.each do |bet|
            [true, false].sample ? bet.status_lost! : bet.status_won!
            if bet.status_won?
                @current_user.update!(balance: (@current_user.balance + bet.return_amount))
            end
        end

        render json: { errors: ["Not authorized"] }, status: :unauthorized unless @current_user
    end

end