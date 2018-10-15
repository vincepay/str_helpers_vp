require "str_helper_vp/version"

module StrHelperVp

  # Your code goes here...
  def self.reversify(str)
    str.split('').reverse.join('')
  end

  def self.casify(str) 
    # randomly choose uppercase or lowercase letters returned:
    to_case = [:upcase, :downcase]
    arr = str.split('')
    arr.each_with_index do |letter, i|
      this_case = to_case.sample
      # if you have a symbol that represents a method, you can 
      arr[i]= letter.send(this_case)
    end
    arr.join('')
  end

  def self.spacify(str, space=0)
    # put that many spaces between each thing
    spaces.times do
      str = str.split('').join(' ') 
    end
    str
  end

end
