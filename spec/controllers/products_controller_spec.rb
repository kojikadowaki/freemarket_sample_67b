require 'rails_helper'


describe ProductsController do
  describe 'GET #search' do
    context "商品名で検索ヒットした場合" do
      before do
        @product = create(:product, name: 'ONE PICE', description: '面白い')
      end
        it "@productsに正しい値が入っていること" do
          get :search, params: { q: { name: "ONE PICE"} }
          expect(assigns(:products)).to match_array(@product)
        end
        it "search.html.hamlに遷移すること" do
          get :search
          expect(response).to render_template :search
        end
    end
    context "商品説明で検索ヒットした場合" do
      it "@productsに正しい値が入っていること" do
        get :search, params: { q: { description: "面白い"} }
        expect(assigns(:products)).to match_array(@product)
      end
      it "search.html.hamlに遷移すること" do
        get :search
        expect(response).to render_template :search
      end
    end
    context "商品名で検索ヒットしなかった場合" do
      it "@productsに正しい値が入っていること" do
        get :search, params: { q: { name: "グッズ"} }
        expect(assigns(:products)).to match_array([])
      end
    end
    context "商品説明で検索ヒットしなかった場合" do
      it "@productsに正しい値が入っていること" do
        get :search, params: { q: { description: "グッズ"} }
        expect(assigns(:products)).to match_array([])
      end
    end
  end
end