class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.references :matchee, foreign_key: { to_table: :users }
      t.references :friend, foreign_key: { to_table: :users }
      t.references :matchmaker, foreign_key: { to_table: :users }
      t.string :status

      t.timestamps
    end
  end
end
