5.times do  |topic|
 Topic.create!(title: "Topic #{topic}")
 
  2.times do |subtopic|
   Topic.create!(title: "SubTopic #{subtopic + 1}", parent_id: (topic + 1))
  end
end

puts "5 root, subfolder"

5.times do  |doc|
 Document.create!(name: "Doc #{doc}", topic_id: 1)
end

puts "5 doc for root folder"

5.times do  |doc|
 Document.create!(name: "Doc #{doc}", topic_id: 2)
end

puts "5 doc for subfolder"

