CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider =>             'AWS',                        # required
    :aws_access_key_id =>     ENV['aws_app_id'],
    :aws_secret_access_key => ENV['aws_secret_key'], 
    :region => ENV['aws_region']
  }
  config.fog_directory  = ENV['aws_bucket']
end
