class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.references   :game_square
      t.references   :category
      t.string       :question
      t.string       :correct_answer
      t.string       :incorrect_answers
      t.string       :difficulty

      t.timestamps
    end
  end
end
