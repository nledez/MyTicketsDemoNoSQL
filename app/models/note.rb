class Note
  include MongoMapper::Document
  
  key :title, String, :required => true
  key :body, String
  
  many :pictures
end

class Picture
  include MongoMapper::EmbeddedDocument
end