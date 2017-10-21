require 'rails_helper'

RSpec.describe Customer, type: :model do

  fixtures :all

  it 'Create a Customer' do
    customer = customers(:jackson)
    expect(customer.full_name).to eq("Sr. Jackson Pires")
  end
end
