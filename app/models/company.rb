class Company < ApplicationRecord
    has_many :clients
    has_many :users
    accepts_nested_attributes_for :user, reject_if: proc { |attributes| 
                                                            attributes['username'].blank? || 
                                                            attributes['firstname'].blank? ||
                                                            attributes['lastname'].blank? ||
                                                            attributes['password'].blank? ||
                                                            attributes['company_id'].blank? 
                                                        }
    has_many :client_contacts, through: :clients
    has_many :notes, through: :users
    has_many :cases, through: :users
end
