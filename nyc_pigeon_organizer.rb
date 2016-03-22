def nyc_pigeon_organizer(data)
  # write your code here!
  hash = {}

  data.each do |trait, trait_info|
    trait_info.each do |info, names|
      names.each do |name|
        if hash.keys.include?(name)
          if hash[name].keys.include?(trait)
            hash[name][trait] << info.to_s
          else
            hash[name][trait] = [info.to_s]
          end
        else
        hash[name] = {trait => [info.to_s]}
        end
      end
    end
  end

  hash
end

