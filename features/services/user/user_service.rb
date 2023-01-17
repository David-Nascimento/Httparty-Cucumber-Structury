class User
  include HTTParty
  base_uri CONFIG["user"]['pet_url']

  def initialize(headers, body)
    @options = {:headers => headers, :body => body}
  end

  def create_user
    self.class.post('/v2/user', @options)
  end

end