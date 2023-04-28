require 'json'

def save_to_file(obj, filename)
  data = obj.map(&:to_hash)
  jsonified_data = JSON.generate(data)
  File.write(filename, jsonified_data, mode: 'w')
end

def read_from_file(filename)
  if File.exist?(filename) and File.size(filename).positive?
    data = File.read(filename)
    JSON.parse(data)
  else
    []
  end
end
