class RenameTypeToJobtypeInJobs < ActiveRecord::Migration
  def change
      rename_column :jobs, :type, :jobtype
  end
end
