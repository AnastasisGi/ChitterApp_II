describe 'the process of authenticating a user ' , :type=> :feature do
    
        scenario 'a user can signup with username and password' do
            visit '/users/new'
            fill_in 'email' ,with: 'example2@example.com'
            fill_in 'password' ,with: 'test1232'
            fill_in 'name' ,with: 'anastasis2'
            fill_in 'username' ,with: 'anastasisgi2'
            click_button 'submit'
            expect(page.current_path). to eq ('/sessions/new')
            expect(page).to have_content('You are logged in!')
        end




end 