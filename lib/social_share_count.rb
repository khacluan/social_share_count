%w(rubygems social_share_count/version net/http uri open-uri nokogiri json).each {|lib| require lib }

module SocialShareCount

  def self.count(type, url)
    case type
    when 'facebook'
      data = open("http://graph.facebook.com/?id=#{URI.escape(url)}").read
      data = JSON.parse(data)
      data['shares'] || 0
    when 'twitter'
      data = open("https://cdn.api.twitter.com/1/urls/count.json?url=#{URI.escape(url)}").read
      data = JSON.parse(data)
      data['count']
    when 'linkedin'
      data = open("https://www.linkedin.com/countserv/count/share?url=#{URI.escape(url)}&format=json").read
      data = JSON.parse(data)
      data['count']
    when 'google-plus'
      googleplus_data = Nokogiri::HTML(open("https://plusone.google.com/_/+1/fastbutton?url=#{URI.escape(url)}"))
      googleplus_data.css('div#aggregateCount')[0].text.to_i
    else
      0
    end
  rescue => e
    # try to request again
    self.count(type, url)
  end
end
