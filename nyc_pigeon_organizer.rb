=begin
def nyc_pigeon_organizer(data)
  new = {}
  data.each do |key, value|
    value.each do |new_v, names|
      names.each do |name|
        
        if !new[name]
          new[name] = {}
        end
        
        if !new[name][key]
          new[name][key] = {}
        end
        
        new[name][key] << new_v.to_s
        
      end
    end
  end
  new
end
=end



def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        
        if !new_hash[name]
          new_hash[name] = {}
        end

        if !new_hash[name][key]
          new_hash[name][key] = []
        end

        new_hash[name][key] << new_value.to_s

      end
    end
  end
  new_hash
end