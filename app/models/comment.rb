class Comment
  include Mongoid::Document
  field :author, type: String
  field :body, type: String
  belongs_to  :post
end
