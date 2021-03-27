class Note < ApplicationRecord
    belongs_to :user
    belongs_to :client
    validates_presence_of :subject, :content, :user, :client, {message: " cannot be empty."}
    validates :content, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed!" }
end
