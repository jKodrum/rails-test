class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.datetime :postdate
      t.string :jobname
      t.string :org
      t.string :joburl
      t.string :joblocation
      t.string :orgurl
      t.string :source

      t.timestamps
    end
  end
end
