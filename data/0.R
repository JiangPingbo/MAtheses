library(DBI);library(RMySQL);library(odbc);
db = dbConnect(MySQL(), 
               db='weixin',
               user='root', 
               password='123456789', 
               host='localhost')
account <- dbReadTable(db, "wechat_account")
account_task <- dbReadTable(db, "wechat_account_task")
article_dynamic <- dbReadTable(db, "wechat_article_dynamic")
article_list <- dbReadTable(db, "wechat_article_list", Encoding = "UTF-8", stringsAsFactors = FALSE)
library(ggplot2);library(plyr);library(dplyr);library(lubridate);library(xlsx);library(showtext)
article <- join(article_dynamic, article_list, by = "sn", type = "inner", match = "all")

article$publish_time <- as_datetime(article$publish_time, tz = "Asia/Taipei")

article <- subset(article, article$subtype == 9)

factor(article$X__biz)
levels(article$X__biz) <- c("環球時報", "肖磊看市", "學習大國", "學習小組", "大浪淘沙", "俠客島", "共青團中央", "後沙月光", "爲你寫一個故事", "政知見", "北美留學生日報", "馮站長之家", "有理兒有面", "寧南山", "緩緩說", "烏鴉校尉", "大白話時事", "盧克文工作室", "補壹刀", "蔣校長", "黔線", "胡錫進觀察", "新華三弄", "遠方青木", "畢導", "占豪", "九邊", "黃生看金融")

#https://stackoverflow.com/questions/19747384/create-new-column-in-dataframe-based-on-partial-string-matching-other-column
zhongwenmingzi = function(x, patterns, replacements = patterns, fill = NA, ...)
{
  stopifnot(length(patterns) == length(replacements))
  
  ans = rep_len(as.character(fill), length(x))    
  empty = seq_along(x)
  
  for(i in seq_along(patterns)) {
    greps = grepl(patterns[[i]], x[empty], ...)
    ans[empty[greps]] = replacements[[i]]  
    empty = empty[!greps]
  }
  
  return(ans)
}  

minger <- read.xlsx('mingzi.xlsx', 1, header = TRUE, stringsAsFactors = FALSE)
tipping <- read.xlsx('tipping.xlsx', 1, header = TRUE, stringsAsFactors = FALSE)
tipping$date<-as_date(tipping$date)
article$mingzi <- zhongwenmingzi(article$X__biz, minger$biz, minger$name)
article$fenzu <- zhongwenmingzi(article$mingzi, 
                                c("九邊|大白話時事|大浪淘沙|有理兒有面|肖磊看市|后沙月光|黔線|寧南山|緩緩說|盧克文工作室","新華三弄","胡錫進觀察","爲你寫一個故事|畢導","補壹刀|馮站長之家|黃生看金融|蔣校長|烏鴉校尉|遠方青木|占豪|北美留學生日報","環球時報|學習大國|學習小組|俠客島|共青團中央|政知見"),
                                c("個人讚賞","個人參照","特殊參照","個人無讚賞","多人參照","機構參照"),)

article19 <- subset(article, article$publish_time >= "2019-01-01 00:00:00 CST")
article19 <- subset(article19, article19$publish_time < "2020-01-01 00:00:00 CST")

article_copyright <- subset(article, article$copyright_stat == 11)
article_cy <- subset(article_copyright, article_copyright$publish_time >= "2019-01-01 00:00:00 CST")
article_cy <- subset(article_cy, article_cy$publish_time < "2020-01-01 00:00:00 CST")

article_gerenzanshang <- subset(article_cy, article_cy$fenzu == "個人讚賞")
article_canzhao <- subset(article_cy, article_cy$fenzu == "多人參照")
article_jigou <- subset(article_cy, article_cy$fenzu == "機構參照")
article_gerenwuzanshang <- subset(article_cy, article_cy$fenzu == "個人無讚賞")
gerenzsp <- ggplot(article_gerenzanshang, aes(publish_time, like_num))+
  geom_point(shape = ".") + 
  geom_smooth() +
  facet_wrap(~mingzi) +
  scale_x_continuous(labels = NULL)+
  ylim(0, 20000)+
  labs(title = "2019年個人原創公衆號的在看數", x = NULL, y = NULL)+
  theme(text=element_text(size=10, family="wqy-microhei"))
gerenzsp
gerenwzsp <- ggplot(article_gerenwuzanshang, aes(publish_time, like_num))+
  geom_point(shape = ".") + 
  geom_smooth() +
  facet_wrap(~mingzi) +
  scale_x_continuous(labels = NULL)+
  ylim(0, 5000)+
  labs(title = "2019年個人原創（無讚賞）公衆號的在看數", x = NULL, y = NULL)+
  theme(text=element_text(size=10, family="wqy-microhei"))
gerenwzsp
jigoup <- ggplot(article_jigou, aes(publish_time, like_num))+
  geom_point(shape = ".") + 
  geom_smooth() +
  facet_wrap(~mingzi) +
  scale_x_continuous(labels = NULL)+
  ylim(0, 5000)+
  labs(title = "2019年機構公衆號的在看數", x = NULL, y = NULL)+
  theme(text=element_text(size=10, family="wqy-microhei"))
jigoup
canzhaop <- ggplot(article_canzhao, aes(publish_time, like_num))+
  geom_point(shape = ".") + 
  geom_smooth() +
  facet_wrap(~mingzi) +
  scale_x_continuous(labels = NULL)+
  ylim(0, 25000)+
  labs(title = "2019年多人原創公衆號的在看數", x = NULL, y = NULL)+
  theme(text=element_text(size=10, family="wqy-microhei"))
canzhaop
ggplot(subset(article_cy, article_cy$fenzu == "個人參照"), aes(publish_time, like_num))+
  geom_point(shape = ".") + 
  geom_smooth() +
  scale_x_continuous(labels = NULL)+
  ylim(0, 1000)+
  labs(title = "2019年新華三弄的在看數", x = NULL, y = NULL)+
  theme(text=element_text(size=10, family="wqy-microhei"))
ggplot(subset(article_cy, article_cy$fenzu == "特殊參照"), aes(publish_time, like_num))+
  geom_point(shape = ".") + 
  geom_smooth() +
  scale_x_continuous(labels = NULL)+
  ylim(0, 500)+
  labs(title = "2019年胡錫進觀察的在看數", x = NULL, y = NULL)+
  theme(text=element_text(size=10, family="wqy-microhei"))

sort(article_gerenzanshang$like_num, decreasing = T)
sort(article_gerenzanshang$comment_count, decreasing = T)
sort(tipping$tipping, decreasing = T)

tipping$fenzu <- zhongwenmingzi(tipping$name, 
                                c("九邊|大白話時事|大浪淘沙|有理兒有面|肖磊看市|后沙月光|黔線|寧南山|緩緩說|盧克文工作室","新華三弄","胡錫進觀察","爲你寫一個故事|畢導","補壹刀|馮站長之家|黃生看金融|蔣校長|烏鴉校尉|遠方青木|占豪|北美留學生日報","環球時報|學習大國|學習小組|俠客島|共青團中央|政知見"),
                                c("個人讚賞","個人參照","特殊參照","個人無讚賞","多人參照","機構參照"),)
tipping19 <- subset(tipping, date >= "2019-01-01")
tipping19 <- subset(tipping19, date < "2020-01-01")
tippinggeren <- subset(tipping19, fenzu == "個人讚賞")
ggplot(tippinggeren, aes(date, tipping))+
  geom_point(shape = ".") + 
  geom_smooth() +
  scale_x_continuous(labels = NULL)+
  facet_wrap(~name) +
  ylim(0, 10000)+
  labs(title = "2019年個人原創公衆號的讚賞數", x = NULL, y = NULL)+
  theme(text=element_text(size=10, family="wqy-microhei"))
tippinggerenall <- subset(tipping, fenzu == "個人讚賞")
ggplot(tippinggerenall, aes(date, tipping))+
  geom_point(shape = ".") + 
  geom_smooth() +
  scale_x_continuous(labels = NULL)+
  facet_wrap(~name) +
  ylim(0, 10000)+
  labs(title = "2018年6月到2020年5月個人原創公衆號的讚賞數", x = NULL, y = NULL)+
  theme(text=element_text(size=10, family="wqy-microhei"))

