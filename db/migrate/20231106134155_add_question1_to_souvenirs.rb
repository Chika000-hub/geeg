class AddQuestion1ToSouvenirs < ActiveRecord::Migration[6.1]
  def change
    add_column :souvenirs, :question1, :string
  end
end
