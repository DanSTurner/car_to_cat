module CarToCat
  class Base
    def self.catify(string)
      string.gsub(/(car)/, 'cat')
    end
  end
end