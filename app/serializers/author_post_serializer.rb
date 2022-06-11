class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_many :tags, through: :post_tags, serializer: PostTagSerializer

  def short_content
    object.content.truncate(43)
  end

  # def short_content
  #   "#{object.content[0..39]...}"
  # end

end
