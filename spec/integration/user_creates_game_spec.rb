require 'rails_helper.rb'

feature "User creates new player" do 
    scenario "User successfully creates a new player and checks to see it on the Newest Students page" do
        visit games_path
        expect(page).to have_content("Resume your journey by entering your username...")
        click_link "Start a new journey!"
        expect(page).to have_content("Enrollment")
        fill_in "Username", with: "Username"
        click_button "Save User"
        expect(page).to have_content("Welcome Username!")
        click_link "Back to Main Menu"
        expect(page).to have_content("Welcome to Winsor Academy!")
        click_link "Newest Students"
        expect(page).to have_content('Username')
    end
end

feature "New user plays game" do
    scenario "User successfully creates new player and makes a game choice" do
        visit games_path
        expect(page).to have_content("Resume your journey by entering your username...")
        click_link "Start a new journey!"
        expect(page).to have_content("Enrollment")
        fill_in "Username", with: "Username"
        click_button "Save User"
        expect(page).to have_content("Welcome Username!")
        click_link "Start"
        expect(page).to have_content("Title: Narrative Title 1")
        expect(page).to have_content("Narrative: This is where the narrative should be.")
        click_link "Choice 1"
        expect(page).to have_content("Title: Narrative Title 2")
        expect(page).to have_content("Narrative: This is where the narrative should be.")
    end
end