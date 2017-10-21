class Customer < ApplicationRecord
    def full_name
      "Sr. #{name}"
    end
end
