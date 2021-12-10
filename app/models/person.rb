class Person < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
	validates :name, presence: true
    validates :phone, presence: true, uniqueness: true, numericality: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :avatar, presence: true

    belongs_to :organization

    def self.search(search)
    	where("lower(name) LIKE :search", search: "%#{search.downcase}%").uniq
    end
end
