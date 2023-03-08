# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3000', 'http://localhost:3001' # or whatever the URL of your React app is
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end
end
