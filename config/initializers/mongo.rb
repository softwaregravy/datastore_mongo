mongo_conn_string = ENV["MONGO_CONNECTION_STRING"]
mongo_conn_string ||= 'localhost:27017'
uri = URI.parse(mongo_conn_string)
MongoMapper.connection = Mongo::Connection.new(uri.host, uri.port)
MongoMapper.database = "#myapp-#{Rails.env}"

if defined?(PhusionPassenger)
     PhusionPassenger.on_event(:starting_worker_process) do |forked|
            MongoMapper.connection.connect if forked
               end
end
