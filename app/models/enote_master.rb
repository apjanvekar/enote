class EnoteMaster < ApplicationRecord
	validates :title, presence: true
	validates :costing, presence: true
	validates :description, presence: true
end
