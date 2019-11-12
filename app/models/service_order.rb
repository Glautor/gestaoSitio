class ServiceOrder < ApplicationRecord
  belongs_to :area
  belongs_to :planting_culture
  # has_many :service
end
