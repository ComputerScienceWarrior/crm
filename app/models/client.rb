class Client < ApplicationRecord
    belongs_to :company
    has_many :notes
    has_many :client_contacts
    accepts_nested_attributes_for :client_contacts,
                                reject_if lambda{ |attrs| attrs.first_name.blank?}
    # has_many :cases, through: :user # is this valid / necessary?
    has_many :users, through: :notes
    has_many :users, through: :cases
end
