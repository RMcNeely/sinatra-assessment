ENV['SINATRA_ENV'] ||= 'test'

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])


require_all 'app'
require_all 'public'


configure :development do
  ActiveRecord::Base.establish_connection(
  :adapter =>  "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
  )
end

configure :production do
 db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/5432')

 ActiveRecord::Base.establish_connection(
   :adapter  => 'postgresql',
   :host     => db.host,
   :username => db.user,
   :password => db.password,
   :database => db.path[1..-1],
   :encoding => 'utf8'
 )
end
