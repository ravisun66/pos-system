class Bill < ApplicationRecord
  has_many :bill_items, :dependent => :destroy
  accepts_nested_attributes_for :bill_items, reject_if: lambda { |item| (item[:quantity].to_i <= 0) }, allow_destroy: true
end
