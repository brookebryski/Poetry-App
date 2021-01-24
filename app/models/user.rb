class User < ApplicationRecord
    has_many :poems
	has_many :comments
end
