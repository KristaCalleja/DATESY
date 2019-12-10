class CreateAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.string :weekday
      t.string :times, array: true, default: []

      t.timestamps
    end
  end
end
