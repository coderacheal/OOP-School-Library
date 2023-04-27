require 'json'

def save_to_file(obj, filename)

    data = obj.map(&:to_hash)

    jsonified_data = JSON.generate(data)

    File.write(filename, jsonified_data, mode: 'w')

end