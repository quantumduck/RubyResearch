# This file contains research from https://ruby-doc.org/core-2.4.0/

class String
  example = "\tHello World \n"
  a1 = 'o'
  a2 = 2
  BigNum = 100 # Or some other large number

  m1 = {
            name: "length",
  arument_number: 0,
    return_class: Integer,
           usage: "example.length",
    return_value: 14,
     description: "Returns the number of characters."
  }

  m2 = {
            name: "strip",
  arument_number: 0,
    return_class: String,
           usage: "example.strip",
    return_value: "Hello World",
     description: "Removes whitespace at beginning and end."
  }

  m3 = {
            name: "split",
  arument_number: (0..2),
       arguments: [{name: "pattern", types: [Regexp, String], default: ' '},
                   {name: "limit", type: Integer, default: -1}],
    return_class: Array,
           usage: "example.split(a1,a2)",
    return_value: ["\tHell", " World \n"],
     description: "Splints string into array of smaller strings.",
           notes: ["If pattern = ' ', it splits at any whitespace.",
                   "If limit is higher than the number of splits, "\
                     "extra empty strings are added in."]
  }

  m4 = {
            name: "start_with?",
  arument_number: (0..BigNum),
       arguments: [{name: "prefix", type: String, default: nil}],
  return_classes: [TrueClass, FalseClass],
           usage: "example.start_with?(a1)",
    return_value: false,
     description: "Returns true if string starts with any of the arguments",
           notes: ["Always returns false if no arguments given"]
  }


end

class Array

m1_name =

end

Array

first
delete_at
delete
pop
Hash

to_a
has_key?
has_value?
Time

now
File

exist?
extname
