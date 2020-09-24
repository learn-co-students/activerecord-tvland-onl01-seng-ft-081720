class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
    end
  end
end


# has a first and last name (FAILED - 1)
# has associated characters in an array (FAILED - 2)
# can build its associated characters (FAILED - 3)
# can build its associated shows through its characters (FAILED - 4)
# can list its full name (FAILED - 5)
# can list all of its shows and characters (FAILED - 6)