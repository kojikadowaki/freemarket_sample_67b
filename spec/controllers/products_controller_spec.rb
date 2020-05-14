require 'rails_helper'


describe ProductsController do
  describe 'GET #search' do
    context "検索ヒットした場合" do
      before do
        @product = create(:product, name: 'グッズ')
      end
        it "@productsに正しい値が入っていること" do
          get :search, params: { q: { name: "グッズ"} }
          expect(assigns(:products)).to match_array(@product)
        end
        it "search.html.hamlに遷移すること" do
          get :search
          expect(response).to render_template :search
        end
    end
    context "検索ヒットしなかった場合" do
      it "@productsに正しい値が入っていること" do
        get :search, params: { q: { name: "グッズ"} }
        expect(assigns(:products)).to match_array([])
      end
    end
  
  
  end
end