Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
  provider :twitter, *ENV['TWITTER_AUTH'].split(":") if ENV['TWITTER_AUTH']
end
