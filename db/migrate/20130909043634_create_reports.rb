class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :customer_id
      t.string :name_of_pet
      t.string :type_of_pet
      t.string :breed
      t.integer :age
      t.integer :weight
      t.datetime :date_of_last_visit
      t.integer :doctor_id
      t.timestamps
    end
  end
end
