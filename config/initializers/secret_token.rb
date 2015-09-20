# inspired by http://stackoverflow.com/questions/18557640/rails-env-variables

use_dummy_token = (Rails.env.development? or Rails.env.test?)
Serler::Application.config.secret_token = if use_dummy_token
  ('x' * 30)
else
  ENV['SECRET_TOKEN']
end
