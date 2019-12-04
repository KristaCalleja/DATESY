class AddContentToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :content, :string
  end
end
