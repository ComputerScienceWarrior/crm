class Company < ApplicationRecord
    has_many :clients
    has_many :users
    has_many :client_contacts, through: :clients
    has_many :notes, through: :users
    has_many :cases, through: :users
end
