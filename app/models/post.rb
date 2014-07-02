class Post
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  field :tags, type: Array
  has_many :comments
end
