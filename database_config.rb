require "active_record"

options = {
  adapter: 'postgresql',
  database: 'hospi-pals'
}

ActiveRecord::Base.establish_connection( ENV['DATABASE_URL'] || options)
