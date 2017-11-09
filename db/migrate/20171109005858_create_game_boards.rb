class CreateGameBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :game_boards do |t|
      t.references :game
      t.boolean    :finished
      t.integer    :score

      t.timestamps
    end
  end
end
