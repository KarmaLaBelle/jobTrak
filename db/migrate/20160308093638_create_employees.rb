class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :phone_number

      t.timestamps null: false

      add_foreign_key :employees, :jobs
    end
  end
end
