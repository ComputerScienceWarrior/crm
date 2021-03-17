class User < ApplicationRecord
    belongs_to :company
    has_many :notes
    has_many :clients, through: :notes

    validates_presence_of :first_name, :last_name, :username, :email, {message: " cannot be left blank."}
    validates :password, length: { in: 8..20 }
    validates :username, :email, uniqueness: true

    has_secure_password
end
