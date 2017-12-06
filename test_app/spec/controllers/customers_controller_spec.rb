require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
  it 'reponds successfully' do
    get :index
    expect(response).to be_success
  end

  it 'reponds a 200 reponse' do
    get :index
    expect(response).to have_http_status(200)
  end
end
