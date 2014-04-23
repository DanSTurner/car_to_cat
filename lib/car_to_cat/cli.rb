require 'car_to_cat/base'

module CarToCat
  class Cli < Base
    def execute(arguments)
      input_file  = File.new arguments[0], 'r'
      output_file = File.new arguments[1], 'w'
      CarToCat::Base.convert(input_file, output_file)
      input_file.close
      output_file.close
    end
  end
end