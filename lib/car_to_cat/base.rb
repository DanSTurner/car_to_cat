module CarToCat
  class Base
    def self.catify(string)
      string.gsub(/(car)s?\b/i) do |match|
        match[/r/] ? match.sub(/r/, "t") : match.sub(/R/, "T")
      end
    end

    def self.convert(input_file, output_file)
      file = File.open(input_file, 'r')
      contents = file.read
      output_file.write(catify(contents))
    end
  end
end