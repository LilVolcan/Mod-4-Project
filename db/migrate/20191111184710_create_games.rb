class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|     
      t.integer :player2_id
      t.integer :player1_id
      t.integer :theme_id
      t.integer :p1card_id
      t.integer :p2card_id

      t.timestamps
    end
  end
end
