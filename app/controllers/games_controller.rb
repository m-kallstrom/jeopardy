class GamesController < ApplicationController
  def show
    @game = Game.create!
    @categories = Category.limit(3).order("RANDOM()")
    @categories.each do | category |
      easy = category.questions.where(difficulty: "easy")[0]
      medium = category.questions.where(difficulty: "medium")[0]
      hard = category.questions.where(difficulty: "hard")[0]
      @easy_square = GameSquare.create(question_id: easy.id, game_id: @game.id)
      @medium_square = GameSquare.create(question_id: medium.id, game_id: @game.id)
      @hard_square = GameSquare.create(question_id: hard.id, game_id: @game.id)
    end

  end
end
