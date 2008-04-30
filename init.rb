require 'openschema'
require 'format'

 package = OpenSchema.new("HotelDescriptiveContentNotifRQ").result

 create_models(package,:rails)
 create_migrations(package,:rails)
