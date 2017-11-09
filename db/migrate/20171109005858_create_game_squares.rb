class CreateGameSquares < ActiveRecord::Migration[5.1]
  def change
    create_table :game_squares do |t|
      t.references :game
      t.references :question

      t.timestamps
    end
  end
end
