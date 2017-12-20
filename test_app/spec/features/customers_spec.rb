require 'rails_helper'

RSpec.feature "Customers", type: :feature, js: true do
    it 'Visit index page' do
      visit(customers_path)
      page.save_screenshot('screenshot.png')
      expect(page).to have_current_path(customers_path)
    end

    it 'Ajax' do
      visit(customers_path)
      click_link('Add Message')
      expect(page).to have_content('Yes!')
    end

    it 'Find' do
      visit(customers_path)
      click_link('Add Message')
      expect(find('#my-div').find('h1')).to have_content('Yes!')
    end

    it 'Creates a Customer' do
      member = create(:member)
      login_as(member, :scope => :member)

      visit(new_customer_path)

      fill_in('Name', with: Faker::Name.name)
      fill_in('Email', with: Faker::Internet.email)
      fill_in('Address', with: Faker::Address.street_address)

      click_button('Create Customer')

      expect(page).to have_content('Customer was successfully created.')
    end
end
