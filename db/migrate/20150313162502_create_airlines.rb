class CreateAirlines < ActiveRecord::Migration
  def change
    create_table :airlines do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
