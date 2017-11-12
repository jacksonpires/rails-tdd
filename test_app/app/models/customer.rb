class Customer < ApplicationRecord
    has_many :orders

    def full_name
      "Sr. #{name}"
    end
end
