def echo(st)
  case st
  when "hello"
    return "hello"
  when "bye"
    return "bye"
  end
end

def shout(st)
  return st.upcase
end

def repeat(st, rep=2)
  str_interp = ""
  rep.times { str_interp += st+" " }
  return str_interp = str_interp.sub(/.$/, "")
end

def start_of_word(word, length)
  return word[0..(length-1)]
end

def first_word(str)
  return str.split.first
end

def titleize(str)
  array = []
  str.capitalize.scan(/\w+/).each do |word|
    if (word != "and") && (word != "or") && (word != "the") && (word != "over")
      array << word.capitalize
    else
      array << word
    end
  end
  return array.join(" ")
end
