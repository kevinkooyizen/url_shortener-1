class Url < ApplicationRecord
  validates :long_url, presence: true, :format => {:with => /(^http:\/\/|https:\/\/)/}
  validates :short_url, presence: true

  def self.retrieve_short_url(long_url)
    url = Url.find_by(long_url: long_url)
    if url
      return url.short_url
    else
      return nil
    end
  end
end
