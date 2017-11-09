
File.open("./trivia-questions.txt", "r") do |f|
  f.each do |line|
    block = eval(line)
    # p block[:results]
    if block != nil
      block[:results].each do |question|

      end
    end
  end
end