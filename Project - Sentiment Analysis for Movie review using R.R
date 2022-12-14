#Sentiment Analysis
library(syuzhet)

#read file
text_df <- read.csv("Text_data.csv")
View(text_df)

#Converting it into character vector
review <- as.character(text_df$sentence)

#Obtaining sentiment scores
get_nrc_sentiment('happy')
get_nrc_sentiment('excitement')

s <- get_nrc_sentiment(review)

#Combining text and sentiment columns
review_sentiment<-cbind(text_df$sentence,s)

#Bar plot for sentiments
barplot(colSums(s), col = rainbow(10), ylab = 'Count', main = 'Sentiment analysis for movie reviews')
