class Book
  attr_reader :title

  def title=(title)
    @title = Book.capitalTitle(title)
  end

  def self.capitalTitle(t)
    not_cap_words = ["and", "or", "the", "over", "in", "of", "a", "an"]
    title_array = []
    t.capitalize.split.each_with_index do |w, i|
      if not_cap_words.include?(w)
        title_array << w
      else
        title_array << w[0].upcase+w[1..(w.length)]
      end
    end
    return title_array.join(" ")
  end
end
