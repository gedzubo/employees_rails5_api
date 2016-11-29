class TitleTypeSerializer < ActiveModel::Serializer
  cache key: 'title_type'

  attributes :name
end