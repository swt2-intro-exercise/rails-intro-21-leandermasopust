require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should have no authors" do
    paper = Paper.new(title:"Title", venue:"Venue", year:"2021")
    expect(paper.authors).to be_empty
  end
end
