class AddProjectIdToAssets < ActiveRecord::Migration
 add_column :assets, :project_id, :integer
end
