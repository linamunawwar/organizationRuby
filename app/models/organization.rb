class Organization < ApplicationRecord
	mount_uploader :logo, LogoUploader
	validates :name, presence: true
    validates :phone, presence: true, uniqueness: true, numericality: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :website, presence: true
    validates :logo, presence: true
    validates :user_id, presence: true

    has_many :persons
    belongs_to :user, foreign_key: :user_id, optional: true


    scope :search, -> (search) {
	    where('organizations.name like :q OR people.name like :q', q: "%#{search}%") if search.present?
	  }
end
