if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAIK7KRN33PPK5B2GQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['railstutorial0508']
  end
end