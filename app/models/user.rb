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
    def self.create_from_provider_data(provider_data)
      where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |user|
        if provider_data.info.first_name.nil? || provider_data.info.last_name.nil?
          user.first_name, user.last_name = provider_data.info.name.split 
        else
          user.first_name = provider_data.info.first_name
          user.last_name = provider_data.info.last_name
          user.username = provider_data.info.name.split.join("-")
        end
        user.email = provider_data.info.email
        user.password = Devise.friendly_token[0, 20] # password not provided by the providers, so we create our own
      end
    end
end
