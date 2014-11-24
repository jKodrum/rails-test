class AddInfoToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :content, :string
    add_column :jobs, :treatment, :string
    add_column :jobs, :type, :string
    add_column :jobs, :location, :string
    add_column :jobs, :worktime, :string
    add_column :jobs, :leavesys, :string
    add_column :jobs, :availability, :string
    add_column :jobs, :reqnum, :string
    add_column :jobs, :acceptid, :string
    add_column :jobs, :exp, :string
    add_column :jobs, :education, :string
    add_column :jobs, :department, :string
    add_column :jobs, :language, :string
    add_column :jobs, :tool, :string
    add_column :jobs, :skill, :string
    add_column :jobs, :othercond, :string
    add_column :jobs, :contact, :string
    add_column :jobs, :emailsrc, :string
    add_column :jobs, :inperson, :string
    add_column :jobs, :telesrc, :string
    add_column :jobs, :other, :string
  end
end
