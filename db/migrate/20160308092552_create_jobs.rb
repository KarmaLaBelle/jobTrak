class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.datetime :jobtime

      t.timestamps null: false
    end
    create_table :employees do |t|
      t.string :name
      t.string :phone_number

      t.timestamps null: true
    end

    add_index :jobs, :employee_id
  end
end
