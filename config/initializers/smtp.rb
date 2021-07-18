# config/initializers/smtp.rb
ActionMailer::Base.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: 587,
  domain: 'quelartiste.com',
  user_name: 'sebastienbruno122@gmail.com',
  password: ENV['etienneglaartiste'],
  authentication: :login,
  enable_starttls_auto: true
}
#if you are using the API key
ActionMailer::Base.smtp_settings = {
  domain: 'YOUR_DOMAIN.COM',
  address:        "smtp.sendgrid.net",
  port:            587,
  authentication: :plain,
  user_name:      'apikey',
  password:       ENV['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']
}
