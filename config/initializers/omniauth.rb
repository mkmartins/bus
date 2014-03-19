OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['647308731995408'], ENV['94172ee829de2383d9067b71ec66e514']
end
