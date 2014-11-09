# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

desc "Get Latest APOD"
task :get_latest_apod => :environment do
  puts 'scraping apod page'
  APOD::Scrape.perform
  puts 'done scraping apod'
end
