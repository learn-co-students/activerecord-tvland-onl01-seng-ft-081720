class AddShowIdToActor < ActiveRecord::Migration[5.1]

  def change
    add_column :actors, :show_id, :integer
  end
end