class ChangeOtherInJobs < ActiveRecord::Migration
  def change
      change_column :jobs, :other, :text
  end
end
