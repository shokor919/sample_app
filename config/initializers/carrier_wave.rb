if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAJOD5VMALV57O5MAQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['railsturorial0508']
  end
end