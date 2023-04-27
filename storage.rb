require 'json'

def save_to_file(obj, filename)

    data = obj.map(&:to_hash)

    jsonified_data = JSON.generate(data)

    File.write(filename, jsonified_data, mode: 'w')

end

# class Storage
#   def self.load_data(filename)
#     if File.exist?(filename)
#       json_data = File.read(filename)
#       JSON.parse(json_data)
#     else
#       []
#     end
#   end

#   def self.save_data(filename, data)
#     File.open(filename, 'a') do |file|
#       file.write(JSON.generate(data))
#     end
#   end
# end

def read_from_file(filename)
    if File.exist?(filename) and File.size(filename) > 0
        data = File.read(filename)
        JSON.parse(data)
    else
        []
    end
 
end