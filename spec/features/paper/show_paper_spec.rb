require 'rails_helper'

describe "Show paper page", type: :feature do
    it "should display the name of the author" do
        @paper = FactoryBot.create :paper
        visit paper_path(@paper)
        expect(page).to have_text('Alan Turing')
      end
end