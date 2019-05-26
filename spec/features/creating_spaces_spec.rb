require 'rails_helper'

RSpec.feature 'Users can create new space' do

    scenario 'with valid attributes' do

        visit '/'

        click_link 'New Space'

        fill_in "Title",	    with: "Bishkek Hotel"
        fill_in "Category",	    with: "Hotel"
        fill_in "Phone",	    with: "+996-012-3456-7890"
        fill_in "Location",	    with: "Center"
        fill_in "Description",	with: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."

        click_button 'Create Space'

        expect(page).to have_content "Space has been created." 
    end

end