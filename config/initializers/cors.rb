Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # the star is only used for development purposes, normally you pass the production/staging URL to it
    origins '*' if Rails.env.development?
    origins 'https://www.example.com' if Rails.env.production?
    origins 'https://staging.example.com' if Rails.env.staging?

    resource '*', headers: :any, methods: [:get, :post, :patch, :put]
  end
end
