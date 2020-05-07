require 'rails_helper'

RSpec.describe CardController, type: :controller do
  let(:user) { create(:user) }

  describe 'GET #new' do
    before do
      login_user user
    end

    it "new.html.hamlに遷移すること" do
      get :new
      expect(response).to render_template :new
    end
    
  end
end