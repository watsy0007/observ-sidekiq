terminal 1
```
bundle exec sidekiq -C ./config/sidekiq.yml -r ./workers/demo_worker.rb
```

terminal 2
```
ruby app.rb
```
