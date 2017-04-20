# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rss'
require 'open-uri'
require 'rubygems'
require 'sanitize'



urls = ['http://www.theonion.com/feeds/rss', 'http://nationalreport.net/feed/','http://www.thespoof.com/rss/feeds/frontpage/rss.xml', 'http://www.newsbiscuit.com/feed/', 'http://21stcenturywire.com/feed/']

urls.each do |url|

	rss = RSS::Parser.parse(open(url).read, false).items[0..50]
	rss.each do |result|
		# if result.description.empty?
		# 	result.description = "Read me to discover what I'm all about...or not about about ;)"
		# end
		page = MetaInspector.new(result.link)
		img = page.images.best
		# doc = Nokogiri::HTML(result.description)
		#
		# 	if result.description.include?('img')
		# 		img = doc.xpath("//img")[0]['src']
		# 	else
		# 		next
		# 	end

		result = Submission.create({ title: result.title, url: result.link, description: Sanitize.clean(result.description.slice(0..200)), image: img })
	end

end

# does not work
# 1.
# 2.



# urls = ['http://www.theonion.com/feeds/rss', , 'http://duhprogressive.com/index.php/component/ninjarsssyndicator/?feed_id=1&format=raw', 'http://www.thespoof.com/rss/feeds/frontpage/rss.xml', 'http://www.newsbiscuit.com/feed/', 'http://21stcenturywire.com/feed/']
# rss_results = []
#
# 	urls.each do |url|
# 		rss = RSS::Parser.parse(open(url).read, false).items[0..5]
# 	rss.each do |result|
# 		if result.description.empty?
# 			result.description = "Read me to discover what I'm all about...or not about about ;)"
# 		end
# 		Feedjira::Feed.add_common_feed_entry_element("image")
# 		result = Submission.create({ title: result.title, url: result.link, description: Sanitize.clean(result.description.slice(0..200)) })
# 	end
# end
