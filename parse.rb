
File.open("./trivia-questions.txt", "r") do |f|
  f.each do |line|
    block = eval(line)
    # p block[:results]
    if block != nil
      block[:results].each do |question|
          #use regex to strip &quot
          current_category = Category.find_or_create_by(name: question[:category])
          current_question = Question.create(difficulty: question[:difficulty], correct_answer: question[:correct_answer], incorrect_answers: questions[:incorrect_answers], question: question[:question], category_id: current_category.id)
      end
    end
  end
end