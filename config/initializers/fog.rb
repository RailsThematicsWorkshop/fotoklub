CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     'CHANGE_ME',
    aws_secret_access_key: 'CHANGE_ME',
    region:                'eu-west-1',
  }
  config.fog_directory  = 'rails-thematic-workshops'
  config.fog_public     = false
end
