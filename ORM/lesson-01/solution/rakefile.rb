
 #!/usr/bin/env ruby

##http://blog.aizatto.com/2007/05/27/activerecord-migrations-without-rails/
# $ rake db:migrate VERSION=0

require 'rubygems'
require 'rake'
require 'active_record'

#task :default => :db:migrate

namespace :db do
	desc "Migrate the database through scripts in db/migrate. Target specific version with VERSION=x"
	task :migrate => :environment do
		ActiveRecord::Migrator.migrate('migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil )
	end
end	 

task :environment do
   ActiveRecord::Base.establish_connection(
		:adapter   => 'sqlite3',
		:database  => './lesson1_AR.db'
	)
   ActiveRecord::Base.logger = Logger.new(File.open('database.log', 'a'))
end

