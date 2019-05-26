require 'rails_helper'

RSpec.feature 'Users can view spaces' do
    scenario 'with the spaces details' do
        space = FactoryBot.create(:space, 
                                    title: 'Altyn-Ordo',
                                    category: 'Hostel',
                                    phone: 'phone number',
                                    location: 'center',
                                    description: 'long description')

        visit '/spaces'
        click_link('Altyn-Ordo')
        expect(page).to have_current_path(space_url(space))
        expect(page).to have_content('Altyn-Ordo')
        expect(page).to have_content('Hostel')
        expect(page).to have_content('phone number')
        expect(page).to have_content('center')
        expect(page).to have_content('long description') 
    end
end