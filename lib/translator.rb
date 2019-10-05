# require modules here
require "yaml"

def load_library(file_path)
  raw_data = YAML.load_file(file_path)
  
  data = {'get_meaning' => {}, 'get_emoticon' => {}}
  
  raw_data.each do |emotion, emoticon_array|
    jpn_emoticon = emoticon_array[1]
    eng_emoticon = emoticon_array[0]
    data['get_meaning'][jpn_emoticon] = eng_emoticon 
  end
  
  puts raw_data["angel"]
  puts " "
  puts data['get_meaning']
  return data
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end