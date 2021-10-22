if (!file.exists("data")) {
      dir.create("data")
}
# download.file()     url, destfile, method

# fileUrl <- "https://data.baltimorecity.gov/api/vies/dz54-saru/rows.csv?accessType=DOWNLOAD"
# download.file(fileUrl, destfile = "./data/cameras.csv", method = "curl")
# list.files("./data")

#dateDownloaded <- date()

#loading flat files
# quote = ""  removes quotation marks from data

#read.xlsx(".xlsx",sheetIndex,colIndex,rowIndex)

#Extracting XML   Extensible markup language
#stores structured data typically used in internet languages
#tags for labels
# start tag <section>   end tag </section>
#empty tag <line-break />
#Elements- examples of tags
# <Greeting> Hello, world </Greeting>

# XML reading
# library(XML)
# fileUrl <- "https://www.w3schools.com/xml/simple.xml"
# doc<- xmlTreeParse(fileUrl,useInternalNodes = TRUE)

# rootNode<- xmlRoot(doc) 
# xmlName(rootNode)
# gives name of node from xml file

#rootNode[[1]] first element of XML document

#htmlTreeParse  for html websites
#xpathSapply(doc,"//li[@class='score']",xmlValue)  search document for list class of score, 
#run to get value at each point


# JSON lightweight data storage
# Javascript Object Notation
# 
# jsonData<- fromJSON("https://api.github.com/users/jtleek/repos")
# names(jsonData)
# fromJSON(myjson) return table back from JSON

# data.table info
# DT<- data.table(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
# same as dframe

#subsetting works differently, looks for expression
## DT[,list(mean(x),sum(z))]
# := adds new column to datatable
#rewrites when not creating true COPY
# DT[,m:= {tmp<-(x+z); log2(tmp+5)}]
# multistep functions added to new columns

#DT[,a:= x>0]      returns true false column based on x value

# DT[,b:= mean(x+w),by=a]  returns mean and chooses values based on value of a

# .N is an integer, length 1, containing the number 
# DT<- data.table(x=sample(letters[1:3],1E5,TRUE))
# DT[, .N, by=x]

# setkey(DT,x) knows to subset x 
# DT['a']  will use the key to return values in DT where x = a
#ability to merge two tables via the same key
#setkey(DT1,x); setkey(DT2,x)
#merge(DT1,DT2)
