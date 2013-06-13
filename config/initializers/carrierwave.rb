
CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAJIIWGYUMGH237PSA',                        # required
    :aws_secret_access_key  => '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',                        # required
  }
  
  config.cache_dir = "#{Rails.root}/tmp/uploads"  #for heroku

  config.fog_directory  = 'jerktest'                     # required
end