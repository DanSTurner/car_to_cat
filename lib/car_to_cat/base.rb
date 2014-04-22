module CarToCat
  class Base
    def self.catify(string)
      string.gsub(/(car)\b/i) do |match|
        match[/r/] ? match.gsub(/r/, "t") : match.gsub(/R/, "T")
      end
    end
  end
end