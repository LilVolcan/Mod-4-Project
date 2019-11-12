class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.integer :theme_id
      t.string :img_url
      t.string :name

      t.timestamps
    end
  end
end
