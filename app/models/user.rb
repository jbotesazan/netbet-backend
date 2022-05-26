class User < ApplicationRecord
    has_secure_password
    has_many :bets
    validates :username, presence: :true, uniqueness: :true
    validates :password, presence: :true, length: { minimum: 5 }, on: :create
    validates :password_confirmation, presence: :true, length: { minimum: 5 }, on: :create
end
