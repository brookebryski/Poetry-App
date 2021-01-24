class Comment < ApplicationRecord
    belongs_to :poem
	belongs_to :user
	validates :content, presence: true
end
