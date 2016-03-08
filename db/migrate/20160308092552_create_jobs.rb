class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.datetime :jobtime

      t.timestamps null: false

      add_foreign_key :jobs, :employees
    end
  end
end
