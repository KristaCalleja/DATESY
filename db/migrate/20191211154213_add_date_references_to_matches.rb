class AddDateReferencesToMatches < ActiveRecord::Migration[5.2]
  def change
    add_reference :matches, :match_date, foreign_key: true
  end
end
