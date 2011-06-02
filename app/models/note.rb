class Note
  include MongoMapper::Document
  
  key :title, String
  key :body, String
end
