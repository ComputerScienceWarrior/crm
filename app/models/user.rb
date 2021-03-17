class User < ApplicationRecord
    belongs_to :company
    has_many :notes
    has_many :clients, through: :notes
    has_secure_password
end
