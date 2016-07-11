[*1..100].each do |index|
  p= Project.create(name: "project_#{index}",
                  description: "description#{index}")

p.save
p.time_entries.create(hours: rand(24).days.ago,
                      minutes: rand(60).days.ago,
                      date: Date.current + index.hours)
end
