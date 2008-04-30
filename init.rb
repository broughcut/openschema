require 'openschema'
require 'format'

 package = OpenSchema.new("HotelRatePlanNotifRQ").result

 create_models(package,:rails)
 create_migrations(package,:rails)
