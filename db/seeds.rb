5.times do  |topic|
 Topic.create!(title: "Topic #{topic}")
 
  2.times do |subtopic|
   Topic.create!(title: "SubTopic #{subtopic}", parent_id: (topic + 1))

    1.times do |three|
     Topic.create!(title: "SubTopic #{three}", parent_id: (subtopic + 1))
    end
  end
end

puts "5 root, subfolder and third level folder"
