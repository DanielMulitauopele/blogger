require 'rails_helper'

describe 'user sees one article' do
  describe 'user links from the articles index' do
    it 'displays information from one article' do
      article_1 = Article.create!(title: 'Title 1', body: 'Body 1')

      visit '/articles'
      click_link article_1.title

      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_1.Body)
    end
  end
end
