class UserInfoSerializer < ActiveModel::Serializer
  attributes :id, :request_user_agent, :request_from, :request_referer, :request_ip
end
