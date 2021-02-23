require './models/user'

describe User do
    scenario 'it creates a new user ' do     
        user = User.create(email: 'example@example.com',
        password: 'test123',
        name: 'anastasis',
        username: 'anastasisgi')
    expect(user.id).not_to eq(nil)
    
    end
end

