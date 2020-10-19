# Replace API_KEY and API_SECRET with the values you got from Twitter
Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter, "n8bmaW94WkDvju88rLzFsBQeF", "JPDKoKp1lmJ8j6HIX5zQ8HH7BrQohhH8FVbnI22EQz5LB9Bffa"
    end
    
    def OmniAuth.login_path(provider)
        "/auth/#{provider}"
    end
