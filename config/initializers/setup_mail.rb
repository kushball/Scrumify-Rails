# require 'tlsmail'    
# Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)
# 
# ActionMailer::Base.delivery_method = :smtp
# ActionMailer::Base.perform_deliveries = true
# ActionMailer::Base.raise_delivery_errors = true

# ActionMailer::Base.smtp_settings = {
  # :enable_starttls_auto => true,  
  # :address            => 'smtp.gmail.com',
  # :port               => 587,
  # :tls                  => true,
  # :domain             => 'gmail.com', #you can also use google.com
  # :authentication     => :plain,
  # :user_name          => 'grooopme@gmail.com',
  # :password           => 'yap2ci2wad6in4j'
# }

# ActionMailer::Base.smtp_settings = {
#   :address              => "smtp.postmarkapp.com",
#   :port                 => "25",
#   :domain               => "groupme.boltlab.com",
#   :user_name            => "a85e3862-8f13-48e5-8550-ba8358d116d9",
#   :password             => "a85e3862-8f13-48e5-8550-ba8358d116d9",
#   :authentication       => "plain",
#   :enable_starttls_auto => true
# }
