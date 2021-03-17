class Client < ApplicationRecord
    belongs_to :company
    has_many :notes
    has_many :client_contacts
    has_many :users, through: :notes
    accepts_nested_attributes_for :client_contacts
    
    validates_presence_of :name, :size, :industry, :client_contacts, {message: " cannot be left blank."}
    validates :size, numericality: { only_integer: true }
    
    extend FriendlyId
    friendly_id :name, use: :slugged
end
