describe 'The sign up process' , :type=> :feature do
    scenario 'A user can sign up with a email and password' do
        visit '/users/new'
        fill_in 'email', with: 'user@example.com'
        fill_in 'password', with: 'test123'
        fill_in 'name', with: 'anastasis'
        fill_in 'username', with: 'anastasisgi'
        click_button 'submit'
        expect(current_path).to eq('/sessions/new')
        expect(page).to have_content('You are logged in!')
    end
end 