require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  
def remove_strawberry(contacts)
  contacts.each do |person, contact_details_hash|
    # binding.pry
    if person == "Freddy Mercury"
      contact_details_hash.each do |attribute, value|
        if attribute == :favorite_ice_cream_flavors
          # binding.pry
          value.delete_if do |ice_cream|
            ice_cream == "strawberry"
          end
        end
        # binding.pry   
      end     
    end
  end
end
