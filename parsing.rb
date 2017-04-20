
require 'rss'
require 'open-uri'
require 'rubygems'
require 'sanitize'
require 'feedjira'
require 'pry'
require 'httparty'
require 'byebug'

def parser
  urls = ['http://www.theonion.com/feeds/rss', 'http://nationalreport.net/feed/', 'http://duhprogressive.com/index.php/component/ninjarsssyndicator/?feed_id=1&format=raw', 'http://www.thespoof.com/rss/feeds/frontpage/rss.xml', 'http://www.newsbiscuit.com/feed/', 'http://21stcenturywire.com/feed/']

  	urls.each do |url|

  		rss = RSS::Parser.parse(open(url).read, false).items[0..5]
  	   rss.each do |result|
    		if result.description.empty?
    			result.description = "Read me to discover what I'm all about...or not about about ;)"
    		end
        doc = Nokogiri::HTML(result.description)
        img = doc.xpath("//img")[0]['src']
        byebug
  		  result = Submission.create({ title: result.title, url: result.link, description: Sanitize.clean(result.description.slice(0..200)) })
      end

  	end
end
parser
