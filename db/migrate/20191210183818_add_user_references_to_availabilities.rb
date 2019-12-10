class AddUserReferencesToAvailabilities < ActiveRecord::Migration[5.2]
  def change
    add_reference :availabilities, :user, foreign_key: true
  end
end
