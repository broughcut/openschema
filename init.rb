require 'openschema'
require 'format'

 package = OpenSchema.new("VehLocDetailsNotifRQ").result

 create_models(package,:rails)
 create_migrations(package,:rails)
