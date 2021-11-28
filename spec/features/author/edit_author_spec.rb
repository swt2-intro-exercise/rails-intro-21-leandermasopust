require 'rails_helper'

describe "Show author page", type: :feature do
    it "should display the updated version of the authors credentials" do
        @author = FactoryBot.create :author
        visit edit_author_path(@author)
        page.fill_in 'author[first_name]', with: 'Elon'
        find('input[type="submit"]').click
        expect(page).to have_text('Elon')
        expect(page).to have_text('Turing')
        expect(page).to have_text('http://wikipedia.de/Alan_Turing')
      end
end