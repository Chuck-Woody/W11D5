# json.partial! "party", party: @party, guests: @guests, aaa: @gifts
json.extract! @party, :name, :location, :guests, :guests_gifts