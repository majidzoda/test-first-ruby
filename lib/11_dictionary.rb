class Dictionary
  attr_reader :entries, :keywords
  def initialize
      @entries = {}
  end

  def add(d)
    if d.class == String
      @entries[d] = nil
    else
      d.each do |key, value|
        @entries[key] = value
      end
    end
  end

  def keywords
    array = []
    @entries.each do |key, value|
      array << key
    end
    return array.sort
  end

  def include?(word)
    return self.keywords.include?(word)
  end

  def find(word)
    d = {}
    keys = []
    @entries.each do |key, value|
      keys << key
    end

    keys.each do |key|
      if key.include?(word)
        d[key] = @entries[key]
      end
    end
    return d
  end

  def printable
    str = ""
    @entries.sort.each do |key, value|
      str += "[#{key}] \"#{value}\"\n"
    end
    return str.chomp
  end
end
