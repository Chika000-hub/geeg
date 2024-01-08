class AddQuestion2ToSouvenirs < ActiveRecord::Migration[6.1]
  def change
    add_column :souvenirs, :question2, :string
  end
end
