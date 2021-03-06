class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.datetime :job_time
      t.integer :employee_id

      t.timestamps null: false
    end
    create_table :employees do |t|
      t.string :name
      t.string :phone_number
      t.timestamps null: true
    end

    add_foreign_key :jobs, :employees
  end
end
