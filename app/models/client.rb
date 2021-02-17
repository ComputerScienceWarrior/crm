class Client < ApplicationRecord
    belongs_to :company
    has_many :cases
    has_many :notes
    has_many :client_contacts
    has_many :users, through: :notes
    has_many :users, through: :cases
end
