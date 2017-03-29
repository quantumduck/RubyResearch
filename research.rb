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
  example = [1, 2, 3, 4]
  n = 2
  m1 = {
            name: "first",
  arument_number: (0..1),
       arguments: {name: "n", type: Integer, default: 1},
  return_classes: [Object, Array],
          usages: ["example.first", "example.first(n)"],
    return_value: [1, 2],
     description: "Returns the first n objects in the array",
           notes: "Returns an array when n is present."
  }

  m2 = {
            name: "delete_at",
  arument_number: 1,
       arguments: {name: "n", type: Integer},
  return_classes: Object,
          usages: "example.delete_at(n)",
    return_value: 3,
     side_effect: example = [1, 2, 4],
     description: "Deletes element at index n from array and returns element"
  }

  m3 = {
            name: "delete",
  arument_number: 1,
       arguments: {name: "n", type: Object},
  return_classes: Object,
          usages: "example.delete(n)",
    return_value: 2,
     side_effect: example = [1, 3, 4],
     description: "Deletes n from array if it exists and returns n",
           notes: "If n is not in array, it returns nil or the result of "\
                  "the do block that follows, if present."
  }

  m4 = {
            name: "pop",
  arument_number: (0..1),
       arguments: {name: "n", type: Integer, default: 1},
  return_classes: [Object, Array],
          usages: "example.pop(n)",
    return_value: [3, 4],
     side_effect: example = [1, 2],
     description: "Removes the last n objects in the array and returns them",
           notes: "Returns the last object or an array when n is present"
  }

end


Hash

to_a
has_key?
has_value?
Time

now
File

exist?
extname
