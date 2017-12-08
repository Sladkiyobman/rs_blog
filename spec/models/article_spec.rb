require 'rails_helper'

describe Article do

  it 'checks validation' do
    article = Article.new(title: '1234')
    expect(article.valid?).to eq(false)
  end

  it '#title_count_words' do
    article = Article.new(title: 'This is a big title')
    expect(article.title_count_words).to eq(5)
  end


end