class ShortUrlsController < ApplicationController
  before_action :set_short_url, only: :show
  before_action :set_short_url_by_token, only: :follow

  # GET /short_urls/1
  def show; end

  # GET /short_urls/new
  def new
    @short_url = ShortUrl.new
  end

  # POST /short_urls
  def create
    @short_url = ShortUrl.find_or_initialize_by(short_url_params)

    respond_to do |format|
      if @short_url.save
        format.html { redirect_to @short_url, notice: 'Short url was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def follow
    UserInfoFactory.create(@short_url, request)
    redirect_to @short_url.long
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_short_url
    @short_url = ShortUrl.find(params[:id])
  end

  def set_short_url_by_token
    @short_url = ShortUrl.find_by_token(params[:token])
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def short_url_params
    params.require(:short_url).permit(:long)
  end
end
