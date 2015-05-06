class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.string :country
      t.integer :age
      t.integer :mobile_number

      t.timestamps null: false
    end
  end
end
