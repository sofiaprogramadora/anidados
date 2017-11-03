class User < ApplicationRecord
	validates :group, presence: true
  belongs_to :group
  has_many :notes, dependent: :destroy
end
