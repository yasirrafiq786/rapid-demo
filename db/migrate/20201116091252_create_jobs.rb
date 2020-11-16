class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :pickup_address
      t.string :dropoff_address
      t.boolean :accepted
      t.float :payment

      t.timestamps
    end
  end
end
