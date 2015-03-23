require 'rails_helper'
  describe "the add a new question process" do
    it "adds a new question" do
      visit questions_path
      click_on "New Question"
      fill_in "Title", :with => "question title"
      fill_in "Content", :with => "question content"
      click_on "Ask"
      expect(page).to have_content 'successfully'
    end
end
