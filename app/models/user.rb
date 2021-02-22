class User < ApplicationRecord
    belongs_to :company
    has_many :notes
    has_many :cases
    has_many :clients, through: :notes
    has_many :clients, through: :cases
    has_secure_password
end
