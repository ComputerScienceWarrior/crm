class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :omniauthable, omniauth_providers: [:google_oauth2]
    belongs_to :company
    has_many :notes
    has_many :clients, through: :notes

    validates_presence_of :first_name, :last_name, :username, :email, {message: " cannot be left blank."}
    validates :password, length: { in: 8..20 }
    validates :username, :email, uniqueness: true
end
