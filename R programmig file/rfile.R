mystring<-"hello Dear"
mystring
if(false)
{
  "this is demo
  for multi line comments"
  print("demo")
}
mystring<-"hello fear"
mystring
v<-3+7i
(class(v))
c->"4"<-d
print(c)
print(d)
v<-c(3,5.5,6)
t<-c(3,3,4)
(v!=t)

m = matrix(c(2,3,4,5,6,7,8),nrow=2,ncol=3,byrow=TRUE)
v1 %*% t
v2 %*% t



x<-20L
if(is.integer(x)){
  print("x is interg3er")
}

#if/else function of r

x<-c("this", "is", "data")
if("data" %in% x)
{
  print("data is found")
}else{
  print("data not found")
}

#switich case of r / the first no. is used for the input

y<-switch(3,"first","second","third")
print(y)

#this seq() will print the no. start to end / with the difference of given no.
#with the help of by=?

print(seq(5,9,by=0.4))  

# ":" this symbol is use to limit the numeric value from where to where
# it will print from the start point to the end point

v<-3.8:16.8
print(v)

#adding and subtracting of two list

v1<-c(2,4,5,3)
v2<-c(3,4)
add.result<-v1+v2
print(add.result)
sub.result<-v1-v2
print(sub.result)

#sort(v1) this do the sorting in asscending order and resort(v1) in decreasing 
#manner and decreasing = TRUE OR FALSE it change the sorting pattern

v1<-c(3,4,6,2)
v2<-C(3,11)
sort.result<-sort(v1)
print(sort.result)
resort.result<-sort(v1,decreasing=false)

#the list function in this we can insert a vector , a matrix or a another list 
#inside the list
#and below is how we can access the data inside the list and manuplate it.

list_data<-list(c("jan","feb","mar"),matrix(c(2,3,4,5,6,7),nrow = 2),
                list("magenta",15.9))
names(list_data)<-c("last quater","my_matrix","my inner list")
print(list_data[2])
print(list_data[3])
print(list_data$my_matrix)
print(list_data$`last quater`)

#cbind and rbind functions for printing the row manner or in the column.

x=c(1:5)
y=c("m","f","f","m","f")
z=cbind(x,y)
(z)
z=rbind(x,y)
(z)

#combining the two vectors in 1 

a=list(1,2,3,4)
b=list(4,6,2,8)
c<-c(a,b)
f=rbind(c)
(f)

#this runif function is for the random generation of the numbers between max and min

runif(10,min=1,max=10)

#adding the 2 vectors

x1=c(1,3,4)
x2=4
add=(x1+x2)
add

#repetation of the given no. in the vector how many times

rep(c(0,0,7),times=4)

#matrix element multiplication in r 

c=matrix(c(2,3,4,5),ncol=2)
d=matrix(c(2,3,4,5),ncol=2)
e=c*d
e 
d

#some function of r

(seq(32:44)) #for printing sequence from given values
(mean(32:44)) #for finding the mean value between the values
(sum(32:44)) #for the sum of all the no. in between

#function in r

func<-function(a){
  for(i in 1:a){
    b<-i^3
    print(b)
  }
}
func(10)

#string concatination
n<-" this "
m<-" is a "
o<-" big data workshop "
(paste(n,m,o,sep ="",collapse = "w"))
(paste(n,m,o,sep="&"))

#different basic 4-functions of r for string manupulations

total<- nchar("to count the characters")
total
total1<- toupper("change to uppercase")
total1
total2<- tolower("change to lowercase")
total2
total3<- substring("divide the substring",5,9)
total3

#small program of array, giving matrix rows and column names and matrix names.

vec1= c(8,2,7)
vec2= c(23,45,67,89,34)
column.names<-c("c1","c2","c3")
row.names<-c("r1","r2","r3")
matrix.names<-c("m1","m2")
total<-array(c(vec1,vec2),dim=c(3,3,2),dimnames=list(row.name,column.name,matrix.names))
total             

#factors are using to generate the random vector list from the given vector and it can classify the random no. too.
#it will classify the data how much variables are in the list

data=c(1,2,3,3,1,2,3,1,2,3,2,1)
fdata=factor(data)
fdata
   #classifing the above data by giving the labels 
rdata=factor(data,labels=c("I","II","III"))
rdata

#factor are generating the random days from the given input

days=c("sun","tue","mon","thus","wed","sat","fri")
days=factor(days)
days

#dataframe example / in rows and column 

stu.data<-data.frame(
                stu_rollno=c(1:3),
                stu_name=c("khitiz","anup","shree"),          
                stu_marks=c(79,85,97),
                admission_date=as.Date(c("2017-17-04","2017-05-09","2017-02-10")),
stringsAsFactors = FALSE
)
str(stu.data)
print(stu.data)
summary(stu.data)
       result<-data.frame(stu.data$stu_name,stu.data$stu_marks)
       print(result)


#this is for read the data from the file and print the data from csv (excel file)           

       print(getwd()) #get working directory / in which we are working 
       setwd("C:/Users/Aviici/Documents") # setting the working directory
       data<-read.csv("rawdata.csv") # reading the file to import the data
       print(data)
       
# program for analize the whatsapp chat and finding emotions feelings etc and plotting 
#       the graph of it. (sentiment analysis)
#for running this we need the directry        
       
       print(getwd()) #get working directory / in which we are working 
       setwd("C:/Users/Aviici/Documents") # setting the working directory
       
       library(syuzhet)
       library(ggplot2)
       library(tm)
       library(wordcloud)
       texts=readLines(2"WhatsApp.txt")
       print(texts)
       sentiment=get_nrc_sentiment(texts)
       print(sentiment)
       text=cbind(texts,sentiment)
       
       TotalSentiment=data.frame(colSums(text[,c(2:11)]))
       TotalSentiment
       
       names(TotalSentiment)="count"
       TotalSentiment=cbind("sentiment"=rownames(TotalSentiment),TotalSentiment)
       
       rownames(TotalSentiment)=NULL 
       ggplot(data=TotalSentiment,aes(x=sentiment,y=count))+
         geom_bar(aes(fill=sentiment),stat = "identity")+theme(legend.position = "none")+
         xlab("sentiment")+ylab("Total count")+ggtitle("Total Sentiment Score")
       
       
  # making a twitter program which will extract the tweets and do the sentiment analysis
  # and make a plot 
       
       library(RCurl)
       library(base64enc)
       library(httr)
       library(tm)
       library(twitteR)
       library(wordcloud)
       
       ConsumerKey="zOpgAmwWzENYjjJqjDFzEZ2WU"
       ConsumerSecret="4ybYakgCF5HvdYj1YzKewwiaiHHcAMdQ3WH9u1DPzDGBNBUXss"
       AccessToken="1006754031694311425-mTK0nwfdLAqGXgCDFAdAxmit9Tihvh"
       AccessTokenSecret="8JMM7IFbOHo1sgO9KTcnFwDaYnaopc75pHMpUg67uLjjs"
       
       setup_twitter_oauth(ConsumerKey,ConsumerSecret,AccessToken,AccessTokenSecret)
       searchnew=searchTwitter("ipl2018",n=100,lang="en")
       searchnew
       
       search_text_vec=sapply(searchnew,function(x) x$getText())
       search_text_vec
       
       search_tm=Corpus(VectorSource(search_text_vec))
       inspect(search_tm)
       
       search_tm_level1=tm_map(search_tm,removePunctuation)
       inspect(search_tm_level1)
       
       search_tm_clean=tm_map(search_tm_level1,removeNumbers)
       inspect(search_tm_clean)
       
       search_tm_clean=tm_map(search_tm_clean,stripWhitespace)
       inspect(search_tm_clean)
       
       search_tm_clean=tm_map(search_tm_clean,removeWords,stopwords("en"))
       inspect(search_tm_clean)
       
       search_tm_clean=tm_map(search_tm_clean,stripWhitespace)
       search_tm_clean=tm_map(search_tm_clean,content_transformer(tolower()))
       inspect(search_tm_clean)
       
       wordcloud(search_tm_clean,random.order = TRUE,max.words = 100,scale = c(3,0,5),
                 colors = rainbow(50))
       
      # database connectivity in R.
       
       print(getwd())
       setwd("C:/Users/Aviici/Documents")
       library("RMySQL")
       
       mysqlconnect=dbConnect(MySQL(),user='root',password='',dbname='nav',host='localhost')
       dblistTables(mysqlconnection)
       result=dbGetQuery(conn=mysqlconnection,statement="select * from hhh")
       result

  # machine learning example iris . appling k-means algo
       
       ds<-iris$Petal.Length
       sort(ds)
       km<-kmeans(ds,3,15)
       km
       plot(ds,col=km$cluster)
       
       library(datasets)
       ir_data<-iris
       tail(ir_data)
       
       iris_2<-iris[-4]
       head(iris_2)
       
  # finding the mean and variance
       
       pop1 <-C(2,3,4,5)
       popu2 <-c(5,6,6,5)
       t.test(pop1,popu2)
       boxplot(popu1,popu2)
       
  # histogram 
       
       
       hist(AirPassengers,
            main="Histogram For Air Passengers",
            xlab="Passengers",
            border="Blue",
            col="green",
            xlim= c(100,700),
            las=1,
            breaks = 5)
       
       # scatterplot
       
       mtcars
       attach(mtcars)
       plot(wt,mpg,main="scatterplot example",xlb="car weight ", ylab="miles per gallon ",pch=19)
       #basic scatterplot matrix
       pairs(~mpg+disp+drat+wt,data=mtcars, main="simple scatterplot matrix")
       