class User < ApplicationRecord
	validates :name, presence: true
    validates :phone, presence: true, uniqueness: true, numericality: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :role_id, presence: true

    has_secure_password
    has_many :organizations
end
