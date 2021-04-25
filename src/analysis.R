setwd("/Users/wuxuelan/Desktop/随便下下/4.21_project")
raw_yield_data<-read.csv("data_raw/raw_yield_data.csv")
clean_yield_data<-na.omit(raw_yield_data[raw_yield_data
                                         $Field!="NA",])
write.csv(clean_yield_data,"data_clean/clean_yield_data.csv")

clean_yield_data<-read.csv("data_clean/clean_yield_data.csv")
aov_Weight_Field<-aov(data=clean_yield_data,Weight~Field)
capture.output(t_test-Weight_Field,file="results/test_results.txt")