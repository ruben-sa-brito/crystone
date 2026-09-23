class Order < ApplicationRecord
  belongs_to :user
  belongs_to :customer

  enum :status, {
    pending: "pending",
    in_production: "in_production",
    ready: "ready",
    delivered: "delivered",
    cancelled: "cancelled"
  }
end
