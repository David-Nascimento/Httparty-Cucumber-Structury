Before '@create_user' do
  @header = {
    "Content-Type" => "application/json"
  }

  body = {
    "id": 0,
    "username": CONFIG['user']['username'],
    "firstName": CONFIG['user']['firstName'],
    "lastName": CONFIG['user']['lastName'],
    "email": CONFIG['user']['email'],
    "password": CONFIG['user']['password'],
    "phone": CONFIG['user']['phone']
  }

  @body = JSON.generate(body)

  @user = User.new(@header, @body)
end