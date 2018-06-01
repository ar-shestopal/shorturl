class Api::V1::ShortUrlsController < Api::ApiController
  def index
    render json: ShortUrl.all
  end
end
