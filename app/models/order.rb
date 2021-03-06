class Order < ApplicationRecord
    has_one :delivery
    has_many :order_records
    has_one :carrier, through: :delivery

    belongs_to :user
    belongs_to :vendor
    
    validates :vendor_id, presence: true
    validates :user_id, presence: true
    validates :location, presence: true
    validates :price, presence: true
    validates :payment_method, presence: true    
end