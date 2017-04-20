API KEY: AIzaSyDZ_TEJ4Mi7l5JIwmn88lIdUrnsR_aRLdU

Project ID
addictme-165212
Project number
15201089446

Your search engine ID:
007714419444388121936:o1viibnb7-k


results.items.last.pagemap.cse_image.first.src
# will get the images from a post


query = "Dwight Howard Clearly Doesn’t Know Team’s Name"
results = GoogleCustomSearchApi.search(query)

results.items.find_all do |item|
  if item.include?("pagemap")
    puts item.pagemap.cse_image.first.src
  end
end



 => [

{
"kind"=>"customsearch#result",
"title"=>"Poker Game -
Hosted by Google", "htmlTitle"=>"<b>Poker</b> Game - Hosted
by Google",
"link"=>"http://images.google.com/hosted/life/8a4ba52e1ba139fb.html",
"displayLink"=>"images.google.com",
"snippet"=>"Russel Crouse (R), poker chip stuck in his eye, playing poker w.
(L-R) Theron \nBamberger & Franklin P. Adams. Location: New
York, NY, US. Date taken: 1941.",
"htmlSnippet"=>"Russel Crouse (R), <b>poker</b> chip stuck in his eye, playing
<b>poker</b> w. (L-R) Theron <br>\nBamberger &amp; Franklin
P. Adams. Location: New York, NY, US. Date taken: 1941.",
"cacheId"=>"QuKSzWDinxoJ",
"formattedUrl"=>"images.google.com/hosted/life/8a4ba52e1ba139fb.html",
"htmlFormattedUrl"=>"images.google.com/hosted/life/8a4ba52e1ba139fb.html"},

{"kind"=>"customsearch#result", "title"=>"Poker Game -
Hosted by Google", "htmlTitle"=>"<b>Poker</b> Game - Hosted
by Google",
"link"=>"http://images.google.com/hosted/life/ffc9676a052853d4.html",
"displayLink"=>"images.google.com", "snippet"=>"Portrait of
Mike Wallach, playwright & member of Hoyle Club, group of
NYC \nactors, writers, producers & newspapermen who meet for
weekly poker games.", "htmlSnippet"=>"Portrait of Mike
Wallach, playwright &amp; member of Hoyle Club, group of NYC
<br>\nactors, writers, producers &amp; newspapermen who meet
for weekly <b>poker</b> games.", "cacheId"=>"USRa7BZzpqgJ",
"formattedUrl"=>"images.google.com/hosted/life/ffc9676a052853d4.html",
"htmlFormattedUrl"=>"images.google.com/hosted/life/ffc9676a052853d4.html"},

{"kind"=>"customsearch#result", "title"=>"Poker Game -
Hosted by Google", "htmlTitle"=>"<b>Poker</b> Game - Hosted
by Google",
"link"=>"http://images.google.com/hosted/life/2d1d9d3e4584a725.html",
"displayLink"=>"images.google.com", "snippet"=>"Portrait of
Howard Lindsay, actor & member of Hoyle Club, group of NYC
actors, \nwriters, producers & newspapermen who meet for
weekly poker games.", "htmlSnippet"=>"Portrait of Howard
Lindsay, actor &amp; member of Hoyle Club, group of NYC
actors, <br>\nwriters, producers &amp; newspapermen who meet
for weekly <b>poker</b> games.", "cacheId"=>"mHmERUbUAeMJ",
"formattedUrl"=>"images.google.com/hosted/life/2d1d9d3e4584a725.html",
"htmlFormattedUrl"=>"images.google.com/hosted/life/2d1d9d3e4584a725.html"},

{"kind"=>"customsearch#result", "title"=>"Poker Game -
Hosted by Google", "htmlTitle"=>"<b>Poker</b> Game - Hosted
by Google",
"link"=>"http://images.google.com/hosted/life/907c1fe229b81e1d.html",
"displayLink"=>"images.google.com", "snippet"=>"(Clockwise
from bottom-C) Frank Hall, Theron Bamberger, Franklin Adams,
\nRussel Crouse, Howard Lindsay, Mike Wallach, & Bernie Hart
playing poker. \nActress ...", "htmlSnippet"=>"(Clockwise
from bottom-C) Frank Hall, Theron Bamberger, Franklin Adams,
<br>\nRussel Crouse, Howard Lindsay, Mike Wallach, &amp;
Bernie Hart playing <b>poker</b>. <br>\nActress&nbsp;...",
"cacheId"=>"WOpx7yese90J",
"formattedUrl"=>"images.google.com/hosted/life/907c1fe229b81e1d.html",
"htmlFormattedUrl"=>"images.google.com/hosted/life/907c1fe229b81e1d.html"},

{"kind"=>"customsearch#result", "title"=>"Poker - Hosted by
Google", "htmlTitle"=>"<b>Poker</b> - Hosted by Google",
"link"=>"http://images.google.com/hosted/life/67294c582bf79e32.html",
"displayLink"=>"images.google.com", "snippet"=>"Poker. Date
taken: July 7, 1949. Photographer: Frank Scherschel. Size:
1280 x \n827 pixels (17.8 x 11.5 inches). Related images:
Search LIFE Images: © Time Inc\n ...",
"htmlSnippet"=>"<b>Poker</b>. Date taken: July 7, 1949.
Photographer: Frank Scherschel. Size: 1280 x <br>\n827
pixels (17.8 x 11.5 inches). Related images: Search LIFE
Images: © Time Inc<br>\n&nbsp;...",
"cacheId"=>"ucB6vEuN2-8J",
"formattedUrl"=>"images.google.com/hosted/life/67294c582bf79e32.html",
"htmlFormattedUrl"=>"images.google.com/hosted/life/67294c582bf79e32.html",
"pagemap"=>{"cse_thumbnail"=>[{"width"=>"279",
"height"=>"180",
"src"=>"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRJ2nAFJgCYSVVNfQUt9Vu1ApBJGQCUpiwrbJypAbI5Sgv7DqNi90X_lng"}],
"cse_image"=>[{"src"=>"http://www.gstatic.com/hostedimg/67294c582bf79e32_landing"}]}},

{"kind"=>"customsearch#result", "title"=>"Poker - Hosted by
Google", "htmlTitle"=>"<b>Poker</b> - Hosted by Google",
"link"=>"http://images.google.com/hosted/life/b4c86a3f38a522ec.html",
"displayLink"=>"images.google.com", "snippet"=>"Poker. Date
taken: July 7, 1949. Photographer: Frank Scherschel. Size:
1280 x \n1280 pixels (17.8 x 17.8 inches). Related images:
Search LIFE Images: ...", "htmlSnippet"=>"<b>Poker</b>. Date
taken: July 7, 1949. Photographer: Frank Scherschel. Size:
1280 x <br>\n1280 pixels (17.8 x 17.8 inches). Related
images: Search LIFE Images:&nbsp;...",
"cacheId"=>"O0WylaEOvdsJ",
"formattedUrl"=>"images.google.com/hosted/life/b4c86a3f38a522ec.html",
"htmlFormattedUrl"=>"images.google.com/hosted/life/b4c86a3f38a522ec.html",
"pagemap"=>{"cse_thumbnail"=>[{"width"=>"225",
"height"=>"225",
"src"=>"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSCIWiM81WBt651LyutFf-g7oSp126UB2xxoWeT5rlz4ixKIen2sldB90wO"}],
"cse_image"=>[{"src"=>"http://www.gstatic.com/hostedimg/b4c86a3f38a522ec_landing"}]}},

{"kind"=>"customsearch#result", "title"=>"Poker - Hosted by
Google", "htmlTitle"=>"<b>Poker</b> - Hosted by Google",
"link"=>"http://images.google.com/hosted/life/89acfbca31d6f687.html",
"displayLink"=>"images.google.com", "snippet"=>"Poker. Date
taken: July 7, 1949. Photographer: Frank Scherschel. Size:
827 x \n1280 pixels (11.5 x 17.8 inches). Related images:
Search LIFE Images: © Time \nInc ...",
"htmlSnippet"=>"<b>Poker</b>. Date taken: July 7, 1949.
Photographer: Frank Scherschel. Size: 827 x <br>\n1280
pixels (11.5 x 17.8 inches). Related images: Search LIFE
Images: © Time <br>\nInc&nbsp;...",
"cacheId"=>"a1v19FRMLqoJ",
"formattedUrl"=>"images.google.com/hosted/life/89acfbca31d6f687.html",
"htmlFormattedUrl"=>"images.google.com/hosted/life/89acfbca31d6f687.html",
"pagemap"=>{"cse_thumbnail"=>[{"width"=>"180",
"height"=>"279",
"src"=>"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTsipyAxmPywWBciB4u0LWpMuaWVC5axTI1YXCJOC7ZVWHRmmFTq2uwXLTV"}],
"cse_image"=>[{"src"=>"http://www.gstatic.com/hostedimg/89acfbca31d6f687_landing"}]}},

{"kind"=>"customsearch#result", "title"=>"Poker Game -
Hosted by Google", "htmlTitle"=>"<b>Poker</b> Game - Hosted
by Google",
"link"=>"http://images.google.com/hosted/life/d4f727865c50d269.html",
"displayLink"=>"images.google.com", "snippet"=>"Buy framed
image. Poker Game. Date taken: 1941. Photographer: Gjon
Mili. Size: \n1280 x 981 pixels (17.8 x 13.6 inches).
Related images: Search LIFE Images: ...",
"htmlSnippet"=>"Buy framed image. <b>Poker</b> Game. Date
taken: 1941. Photographer: Gjon Mili. Size: <br>\n1280 x 981
pixels (17.8 x 13.6 inches). Related images: Search LIFE
Images:&nbsp;...", "cacheId"=>"w4Uup-yBA54J",
"formattedUrl"=>"images.google.com/hosted/life/d4f727865c50d269.html",
"htmlFormattedUrl"=>"images.google.com/hosted/life/d4f727865c50d269.html",
"pagemap"=>{"cse_thumbnail"=>[{"width"=>"256",
"height"=>"197",
"src"=>"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSWEig5A6EK8RLxBfDX9FiVtLfvyRPTvj60b8IngKujPXRXb5nqKVK7BMNt"}],
"cse_image"=>[{"src"=>"http://www.gstatic.com/hostedimg/d4f727865c50d269_landing"}]}},

{"kind"=>"customsearch#result", "title"=>"Poker - Hosted by
Google", "htmlTitle"=>"<b>Poker</b> - Hosted by Google",
"link"=>"http://images.google.com/hosted/life/26ad86898721e734.html",
"displayLink"=>"images.google.com", "snippet"=>"Poker. Date
taken: July 7, 1949. Photographer: Frank Scherschel. Size:
1280 x \n960 pixels (17.8 x 13.3 inches). Related images:
Search LIFE Images: © Time Inc\n ...",
"htmlSnippet"=>"<b>Poker</b>. Date taken: July 7, 1949.
Photographer: Frank Scherschel. Size: 1280 x <br>\n960
pixels (17.8 x 13.3 inches). Related images: Search LIFE
Images: © Time Inc<br>\n&nbsp;...",
"cacheId"=>"HRhVBroySNsJ",
"formattedUrl"=>"images.google.com/hosted/life/26ad86898721e734.html",
"htmlFormattedUrl"=>"images.google.com/hosted/life/26ad86898721e734.html",
"pagemap"=>{"cse_thumbnail"=>[{"width"=>"259",
"height"=>"194",
"src"=>"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ89eaicPwkjdEIHyzg3yzI7IVyo2Ofn7pAGM7O-g4NOwrbiNoBEYSdcVHA"}],
"cse_image"=>[{"src"=>"http://www.gstatic.com/hostedimg/26ad86898721e734_landing"}]}},

{"kind"=>"customsearch#result", "title"=>"Poker Game -
Hosted by Google", "htmlTitle"=>"<b>Poker</b> Game - Hosted
by Google",
"link"=>"http://images.google.com/hosted/life/92c4bbb84d61968e.html",
"displayLink"=>"images.google.com", "snippet"=>"Buy framed
image. Poker Game. Date taken: 1941. Photographer: Gjon
Mili. Size: \n1280 x 980 pixels (17.8 x 13.6 inches).
Related images: Search LIFE Images: ...",
"htmlSnippet"=>"Buy framed image. <b>Poker</b> Game. Date
taken: 1941. Photographer: Gjon Mili. Size: <br>\n1280 x 980
pixels (17.8 x 13.6 inches). Related images: Search LIFE
Images:&nbsp;...", "cacheId"=>"KhvAWV4yQeEJ",
"formattedUrl"=>"images.google.com/hosted/life/92c4bbb84d61968e.html",
"htmlFormattedUrl"=>"images.google.com/hosted/life/92c4bbb84d61968e.html",
"pagemap"=>{"cse_thumbnail"=>[{"width"=>"256",
"height"=>"197",
"src"=>"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTTzvQj7d4B9UjLFFEY3CTX6K82LJ2YNa7JfbFgLT-qY1DW3_QSrYsazsRH"}],
"cse_image"=>[{"src"=>"http://www.gstatic.com/hostedimg/92c4bbb84d61968e_landing"}]}}]



=> {"cse_thumbnail"
=>[
{"width"=>"256", "height"=>"197",
"src"=>"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTTzvQj7d4B9UjLFFEY3CTX6K82LJ2YNa7JfbFgLT-qY1DW3_QSrYsazsRH"}],

"cse_image"=>[{"src"=>"http://www.gstatic.com/hostedimg/92c4bbb84d61968e_landing"}]}
