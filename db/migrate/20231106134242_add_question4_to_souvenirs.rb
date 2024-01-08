class AddQuestion4ToSouvenirs < ActiveRecord::Migration[6.1]
  def change
    add_column :souvenirs, :question4, :string
  end
end
