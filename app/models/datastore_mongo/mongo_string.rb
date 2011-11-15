module DatastoreMongo
  class MongoString 
    include MongoMapper::Document 
    key :field_1, String
    key :field_2, String
  end
end
