require './config/environment'
require 'puma'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use DrinksController
use UsersController
use FavoritesController
use LocationsController
use ApplicationController
run Sinatra::Application
