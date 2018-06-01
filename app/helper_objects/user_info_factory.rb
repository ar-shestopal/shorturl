module UserInfoFactory
  def self.create(short_url, request)
    request_params = { request_user_agent: request.user_agent,
                       request_from: request.from,
                       request_referer: request.referer,
                       request_ip: request.remote_ip }

    user_info_params = request_params.merge({short_url_id: short_url.id})

    UserInfo.create(user_info_params)
  end
end