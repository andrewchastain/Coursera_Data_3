if(!dir.exists("./data")) {
    dir.create("./data")
}

## Questions 1, 2 ##

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", dest="./data/raw.csv")

dl <- read.csv("./data/raw.csv")

val <- dl$VAL # subset values column

sum(val == 24) # count of values > $1,000,000 
#[1] 53

## Question 3 ##

library(xlsx)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx", dest="./data/NGAP_raw.xlsx", mode="wb")

dat <- read.xlsx("./data/NGAP_raw.xlsx", 1, startRow=18, endRow=23, colIndex=7:15) # select range of interest

sum(dat$Zip*dat$Ext,na.rm=T)
#[1] 36534720

## Question 4 ##

library(XML)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml", dest="./data/restaurants_raw.xml")

xml_obj <- xmlTreeParse("./data/restaurants_raw.xml", useInternal=TRUE) # create xml container

rootNode <- xmlRoot(xml_obj) # gets (and sets to rootNode) the root node location

sum(xpathSApply(rootNode,"//zipcode", xmlValue) == "21231") # count of nodes with <zipcode> of 21231
#[1] 127

## Question 5 ##

library(data.table)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", dest="./data/ss06pid_raw.csv")

DT <- fread("./data/ss06pid_raw.csv")
