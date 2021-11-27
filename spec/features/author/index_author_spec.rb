require 'rails_helper'

 describe "Index author page", type: :feature do
   it "should show name and homepage of all authors" do
        FactoryBot.create :author
        visit authors_path
        expect(page).to have_text("Alan Turing")
        expect(page).to have_text("http://wikipedia.de/Alan_Turing")
    end

    it "should have link to create author" do
        visit authors_url
        expect(page).to have_link 'New', href: new_author_path
    end
end