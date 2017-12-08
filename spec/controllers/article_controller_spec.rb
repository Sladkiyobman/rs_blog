require 'rails_helper'

describe ArticlesController do

  it '#create' do
    _params = { article: { title: 'Title', text: 'This is a text for the article' } }

    expect(Article.count).to eq(0)
    post :create, params: _params
    expect(Article.count).to eq(1)

    expect(response).to redirect_to(Article.last)
  end

end