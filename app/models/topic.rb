class Topic < ActiveRecord::Base
	has_many :responses, dependent: :destroy
end
