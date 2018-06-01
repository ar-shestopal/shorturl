class ShortUrlSerializer < ActiveModel::Serializer
  attributes :id, :long, :token
  has_many :user_infos
end
