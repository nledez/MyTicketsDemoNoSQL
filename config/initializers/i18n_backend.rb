if ENV['REDISTOGO_URL']
  uri = URI.parse(ENV["REDISTOGO_URL"])
  TRANSLATION_STORE = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
else
  TRANSLATION_STORE = Redis.new  
end

I18n.backend = I18n::Backend::Chain.new(I18n::Backend::KeyValue.new(TRANSLATION_STORE), I18n.backend)
