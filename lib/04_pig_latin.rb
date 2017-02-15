

def translate(str)
  result = []
  if str.include?(" ")
    words = str.split(/\s/)
    words.each do |match|
      if isVowel(match[0])
        result << rule1(match)
      else
        result << rule2(match)
      end
    end
    return result.join(" ")
  else
    if isVowel(str[0])
      return rule1(str)
    else
      return rule2(str)
    end
  end
end

def isVowel(char)
  vowels = ["a", "e", "i", "o", "u"]
  return vowels.include?(char)
end

def rule1(word)
  return word+"ay"
end

def rule2(word)
  result = ""
  ind = 0
  while ind < word.length
    if isVowel(word[ind])
      result = word[ind...(word.length)]+word[0..ind-1]+"ay"
      break
    elsif ((word[ind] == "q") && (word[ind+1] == "u"))
      result = word[(ind+2)...(word.length)]+word[0..ind+1]+"ay"
      break
    end
    result = word
    ind += 1
  end
  return result
end
