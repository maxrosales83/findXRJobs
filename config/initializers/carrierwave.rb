#require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AWS_ACCESS_KEY_ID"],                        # required unless using use_iam_profile
    aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],                        # required unless using use_iam_profile
    #use_iam_profile:       true,                         # optional, defaults to false
    #region:                'us-east-1',                  # optional, defaults to 'us-east-1'
    
  }

  config.storage = :fog
  config.fog_directory  = 'xrloadedstorage'                                      # required
  config.fog_public     = true                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end