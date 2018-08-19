require 'rails_helper'

RSpec.describe QueriesController, type: :controller do
  describe '#index' do
    let(:user) { create(:user, email: 'aaa@aaa.com', password: 'aaaaaa') }
    let!(:query1) {
      create(:query, user: user)
    }
    let!(:query2) {
      create(:query, user: user)
    }
    it 'returns correct number of queries' do
      user.save
      get :index, { params: {user_id: user.id } }
      expect(response).to be_success
      expect(Query.count).to eq(2)
    end
  end

  describe '#create' do
    let(:user) { create(:user, email: 'aaa@aaa.com', password: 'aaaaaa') }
    it 'save query for a user' do
      user.save
      post :create, { params: { query: { title: 'aaa', user_id: user.id } } }
      expect(response).to be_success
      expect(Query.count).to eq(1)
    end
  end

  describe '#update' do

  end

  describe '#delete' do

  end
end
