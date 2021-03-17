class Client < ApplicationRecord
    belongs_to :company
    has_many :notes
    has_many :client_contacts
    accepts_nested_attributes_for :client_contacts
    has_many :users, through: :notes
    extend FriendlyId
    friendly_id :name, use: :slugged
end
