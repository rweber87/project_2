# SEED ARTICLES

require 'rss'
require 'open-uri'
require 'rubygems'
require 'sanitize'

urls = ['http://www.theonion.com/feeds/rss', 'http://nationalreport.net/feed/','http://www.thespoof.com/rss/feeds/frontpage/rss.xml', 'http://www.newsbiscuit.com/feed/', 'http://21stcenturywire.com/feed/']

urls.each do |url|
	rss = RSS::Parser.parse(open(url).read, false).items[0..100]
	rss.each do |result|
		page = MetaInspector.new(result.link)
		img = page.images.best
		result = Submission.create({ title: result.title, url: result.link, description: Sanitize.clean(result.description.slice(0..200)), image: img })
	end
end
