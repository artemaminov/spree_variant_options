collection @option_values
node(:image) do |image|
    image.image.url(:small)
end

extends "spree/api/option_values/show"
