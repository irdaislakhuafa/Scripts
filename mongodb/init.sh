MDBPATH='/var/lib/mongodb'
alias mongoStart="doas mongod --dbpath $MDBPATH --journal"
