require 'securerandom'
class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def create
    @url = Url.new(url_params)
    @url.short_url = SecureRandom.hex(10)
    if @url.save
      redirect_to urls_path
    else
      @errors = @url.errors
      render :new
    end
  end

  def new
    @url = Url.new
  end

  def short
    url = Url.find(params[:id])
    redirect_to url.long_url
  end

  def url_params
    params.require(:url).permit(:long_url)
  end
end
