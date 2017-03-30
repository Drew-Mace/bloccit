 require 'random_data'
 
 #create topics
 15.times do 
   Topic.create!(
     name: RandomData.random_sentence,
     description: RandomData.random_paragraph
     )
   end
   topics = Topic.all

 # Create Posts
 50.times do
 # #1
   Post.create!(
 # #2
     topic: topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 
 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
 
 5.times do
 # #1
   Question.create!(
 # #2
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph,
     resolved: false
   )
 end
 
 5.times do
 # #1
   SponsoredPost.create!(
 # #2
     topic: topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph,
     price: 99
   )
 end
 
 Post.find_or_create_by(title: "Dont repeat me", body: "dont touch my body")
 Comment.find_or_create_by(body: "this be the comment text")
  
 
 
 
 puts "Seed finished"
 puts "#{Topic.count} topics created"
 puts "#{SponsoredPost.count} posts created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Question.count} questions created"