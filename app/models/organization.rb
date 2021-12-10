class Organization < ApplicationRecord
	mount_uploader :logo, LogoUploader
	validates :name, presence: true
    validates :phone, presence: true, uniqueness: true, numericality: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :website, presence: true
    validates :logo, presence: true
end
