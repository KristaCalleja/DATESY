class CreateMatchDates < ActiveRecord::Migration[5.2]
  def change
    create_table :match_dates do |t|
      t.datetime :start_at

      t.timestamps
    end
  end
end
