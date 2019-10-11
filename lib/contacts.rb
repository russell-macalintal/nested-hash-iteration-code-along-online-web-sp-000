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
  contacts.each do |name, contact_details_hash|
    if name == "Freddy Mercury"
      contact_details_hash.each do |attribute, value|
        if attribute == :favorite_ice_cream_flavors
          value.delete_if {|flavor| flavor == "strawberry"}
          # value.each do |flavor|
          #   if flavor == "strawberry"
          #     value.delete(flavor)
          #   end
          # end
        end
      end
    end
  end
end
