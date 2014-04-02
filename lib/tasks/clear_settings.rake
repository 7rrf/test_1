task :clear_settings => :environment do
	Setting.destroy_all	
end