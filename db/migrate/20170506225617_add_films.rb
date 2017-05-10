class AddFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :title
      t.string :director
      t.text :characters
    end
  end
end
