class ClientContact < ApplicationRecord
    belongs_to :client

    validates_presence_of :first_name, :last_name, :email, :phone, :title, {message: " cannot be left blank."}
    validates :email, uniqueness: true
end
