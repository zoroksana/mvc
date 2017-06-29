Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['246986032460736'], ENV['b8162f59a1d4f8797642ed71903576ed']
end