Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :github, ENV['ZEBRA_APP_ID'], ENV['ZEBRA_APP_SECRET']
end
