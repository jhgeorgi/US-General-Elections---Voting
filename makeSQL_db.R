library(RSQLite)
library(sqldf)

contrib1982 <- read.csv("1982/contribDB_1982.csv")
contrib1984 <- read.csv("1984/contribDB_1984.csv")
contrib1986 <- read.csv("1986/contribDB_1986.csv")
contrib1988 <- read.csv("1988/contribDB_1988.csv")
contrib1990 <- read.csv("1990/contribDB_1990.csv")
contrib1992 <- read.csv("1992/contribDB_1992.csv")
contrib1994 <- read.csv("1994/contribDB_1994.csv")

# create SQLite database and add tables

sqlite    <- dbDriver("SQLite")
exampledb <- dbConnect(sqlite,"contributions.db") # makes a new file

dbWriteTable(exampledb, "contributions", contrib1982)
dbWriteTable(exampledb, "contributions", contrib1984, append = TRUE)
dbWriteTable(exampledb, "contributions", contrib1986, append = TRUE)
dbWriteTable(exampledb, "contributions", contrib1988, append = TRUE)
dbWriteTable(exampledb, "contributions", contrib1990, append = TRUE)
dbWriteTable(exampledb, "contributions", contrib1992, append = TRUE)
dbWriteTable(exampledb, "contributions", contrib1994, append = TRUE)

dbListTables(exampledb)
dbDisconnect(exampledb)
