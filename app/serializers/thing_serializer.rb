class ThingSerializer < ActiveModel::Serializer
  attributes :title, :body

  def title
    object.name
  end
end
