# SEED ARTICLES

require 'rss'
require 'open-uri'
require 'rubygems'

urls = ['http://www.theonion.com/feeds/rss', 'http://nationalreport.net/feed/', 'http://www.newsbiscuit.com/feed/', 'http://21stcenturywire.com/feed/']
id_array = User.all.collect {|user| user.id }

urls.each do |url|
		rss = RSS::Parser.parse(open(url).read, false).items[0..100]
		rss.each do |result|
			page = MetaInspector.new(result.link)
			img = page.images.best
			description = page.meta_tag["property"]["og:description"]
			if description.nil?
				description = ""
			end
			result = Submission.create({ title: page.meta_tag["property"]["og:title"], url: result.link, description: description << '...', image: img, user_id: id_array.shuffle.first })
		end
end
