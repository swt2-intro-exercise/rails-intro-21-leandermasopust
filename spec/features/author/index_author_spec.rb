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

    it "should have a link to delete each author" do
        @author = FactoryBot.create :author
        visit authors_path
        expect(page).to have_link 'Delete', href: author_path(@author)
    end

    it "should delete an author when clicking the delete link" do
        @author = FactoryBot.create :author
        visit authors_path
        click_link("Delete")
        expect(Author.count).to eq(0)
    end

end