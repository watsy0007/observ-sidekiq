Object.include ObServ::DSL
Object.new.subscribe :event_demo do |data|
  sleep(2)
  puts data
end
