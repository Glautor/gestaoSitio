class Service < ApplicationRecord
  belongs_to :worker
  belongs_to :service_order
end
