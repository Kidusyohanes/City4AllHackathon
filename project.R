

library(dplyr)
library(ggplot2)
library(plotly)


#aging_disab <- read.csv("data/Aging_and_Disability_Services_-_Client_Level_Data_2016.csv", header = TRUE)
#Hsd_contract <- read.csv("data/HSD_Contracts_2016.csv", header = TRUE) 

# The 2015 census tract data 
tract_data_2015 <- read.csv("data/nhgis0001_csv/2015_tract.csv", header=TRUE) 
tract_data_2010 <- read.csv("data/nhgis0001_csv/2010_tract.csv", header = TRUE)
# The 2015 & 2010 state data 
state_data_2015 <- read.csv("data/nhgis0001_csv/2015_state.csv", header = TRUE)
state_data_2010 <- read.csv("data/nhgis0001_csv/2010_state.csv", header = TRUE)
# The 2015 & 2010 urban area data 
urb_data_2015 <- read.csv("data/nhgis0001_csv/2015_urb_area.csv", header = TRUE)
urb_data_2010 <- read.csv("data/nhgis0001_csv/2010_urb_area.csv", header = TRUE)


# 2015 & 2010 tract data for Washington state 
WA_tract_2015_data <- tract_data_2015[tract_data_2015$STATE =='Washington',]
WA_tract_2010_data <- tract_data_2010[tract_data_2010$STATE =='Washington',]

# 2015 & 2010 state data for Washington state 
WA_state_2015_data <- tract_data_2015[state_data_2015$STATE =='Washington',]
WA_state_2010_data <- tract_data_2010[state_data_2010$STATE =='Washington',]

# 2015 & 2010 urban area data for Washington state 
WA_urb_2015_data <- tract_data_2015[urb_data_2015$STATE =='Washington',]
WA_urb_2010_data <- tract_data_2010[urb_data_2010$STATE =='Washington',]



# unique dataframe for Washington tract 2015 data by county
uni_tract_2015 <- unique.data.frame(WA_tract_2015_data[WA_tract_2015_data$COUNTY, ])
uni_state_2015 <- unique.data.frame(WA_state_2015_data[WA_state_2015_data$COUNTY, ])
uni_urban_2015 <- unique.data.frame(WA_urb_2015_data[WA_state_2015_data$COUNTY, ])

# Combine Urban Area, state & tract data set into one by (Race, Income and Age)
combined <- rbind.data.frame(uni_state_2015, uni_tract_2015, uni_urban_2015)



