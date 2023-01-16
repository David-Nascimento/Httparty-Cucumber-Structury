class User
  include HTTParty
  basic_uri CONFIG['pet_url']

  def initialize(headers, body)
    @options = {:headers => headers, :body => body}
  end

  def create_user
    self.class.post('/v2/user', @options)
  end

end