def count_diamonds(expression)
  stack = []
  count = 0

  expression.chars.each do |char|
    case char
    when '<'
      stack.push(char)
    when '>'
      if stack.last == '<'
        stack.pop
        count += 1
      end
    when '.'
      next
    end
  end

  count
end

expression = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'
count = count_diamonds(expression)
puts "Foram encontrados #{count} diamantes na expressão '#{expression}'."
