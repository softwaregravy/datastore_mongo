Rails.application.routes.draw do

  mount DatastoreMongo::Engine => "/datastore_mongo"
end
