comments = File.foreach("/Users/davidmieloch/dev/project_2/db/comments.txt").map {|line| line.split("/n") }
users = User.all.collect {|user| user.id }
submission = Submission.all.collect {|article| article.id}

comments.flatten.each {|comment| Comment.create(body: comment.split("\r\n")[0], user_id: users.sample, submission_id: submission.sample)}

p comments.flatten.first.split("\r\n")
