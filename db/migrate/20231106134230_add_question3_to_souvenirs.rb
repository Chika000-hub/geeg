class AddQuestion3ToSouvenirs < ActiveRecord::Migration[6.1]
  def change
    add_column :souvenirs, :question3, :string
  end
end
