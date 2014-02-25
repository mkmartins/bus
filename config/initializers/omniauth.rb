#require 'omni-auth facebook'
#config.OmniAuth :facebook, "APP-ID", "App-SECRET" :strategy_class => OmniAuth::Strategies::Facebook


OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
end
