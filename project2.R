setwd("c:/R")
climate <- read.csv("StormData.csv")

"STATE__"    "BGN_DATE"   "BGN_TIME"   "TIME_ZONE"  "COUNTY"     "COUNTYNAME" "STATE"      "EVTYPE"     "BGN_RANGE" 
"BGN_AZI"    "BGN_LOCATI" "END_DATE"   "END_TIME"   "COUNTY_END" "COUNTYENDN" "END_RANGE"  "END_AZI"    "END_LOCATI"
"LENGTH"     "WIDTH"      "F"          "MAG"        "FATALITIES" "INJURIES"   "PROPDMG"    "PROPDMGEXP" "CROPDMG"   
"CROPDMGEXP" "WFO"        "STATEOFFIC" "ZONENAMES"  "LATITUDE"   "LONGITUDE"  "LATITUDE_E" "LONGITUDE_" "REMARKS"   
"REFNUM" 
to_read2 <- c(rep("NULL",5),rep(NA,3),rep("NULL",10),rep(NA,9),rep("NULL",10))
climate <- read.csv("StormData.csv",colClasses = to_read2)
Injures <- tapply(as.numeric(as.character(climate$INJURIES)),climate$EVTYPE,sum)
Death <- tapply(as.numeric(as.character(climate$FATALITIES)),climate$EVTYPE,sum)
Total <- anwser1[order(anwser1,decreasing=TRUE)][1]


Deathmax10 <- Death[order(Death,decreasing=T)][1:10]
Injuriesmax10 <- Injures[order(Injures,decreasing=T)][1:10]
Totalmax10 <- Total[order(Total,decreasing=T)][1:10]

Summary <- cbind("Death"=Death,"Injuries"=Injures,"Total"=Total)
Summary <- Summary[order(Summary[,3],decreasing=T),]
