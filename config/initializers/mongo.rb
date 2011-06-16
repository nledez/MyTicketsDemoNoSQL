if ENV['MONGOHQ_URL']
  MongoMapper.config = {
    Rails.env => { 'uri' => ENV['MONGOHQ_URL'] ||
     "mongodb://localhost/#myapp-#{Rails.env}" }
  }

  MongoMapper.connect(Rails.env)
else
  MongoMapper.connection = Mongo::Connection.new('localhost', 27017)
  MongoMapper.database = "#myapp-#{Rails.env}"
end

if defined?(PhusionPassenger)
   PhusionPassenger.on_event(:starting_worker_process) do |forked|
     MongoMapper.connection.connect if forked
   end
end
