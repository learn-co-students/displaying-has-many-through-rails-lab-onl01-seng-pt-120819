class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :department
      t.string :appointment_id

      t.timestamps
    end
  end
end
