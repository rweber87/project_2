OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1296264597089818', 'a68c65172f00b47cc1ed1c0f91568e58'
end
