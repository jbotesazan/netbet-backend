class User < ApplicationRecord
    has_secure_password
    has_many :bets
    validates :username, presence: :true, uniqueness: :true
    validates :password, presence: :true, length: { minimum: 5 }
    validates :password_confirmation, presence: :true, length: { minimum: 5 }
    validates :balance, presence: :true, numericality: { greater_than_or_equal_to: 100, less_than_or_equal_to: 1000}
end
