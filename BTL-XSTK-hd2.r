hist(data$ActionLatency, main = "Histogram of ActionLatency", beark = 30, xlim = c(24, 180))
boxplot(data$ActionLatency, main = "Histogram of ActionLatency")
par(mfrow = c(2, 1))
hist(data$TotalMapExplored, main = "Histogram of TotalMapExplored", beark = 30, xlim = c(0, 70))
boxplot(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
library(readr)
data <- read.csv("D:/xstk-2.0/BTL/skillcraft1+master+table+dataset/SkillCraft1_Dataset.csv")
View(data)
head(data, 10)
# chọn các biến quan tâm
data <- data[,c(2,3, 4,5,6, 9, 14, 16)]
# Kiểm tra sự hiện diện của "?" trong từng cột
has_question_mark <- sapply(data, function(x) sum(x == "?", na.rm = TRUE))
print(has_question_mark)
# Thay thế "?" bằng NA trong toàn bộ data frame
data[data == "?"] <- NA
# Chuyển đổi các cột từ kiểu ký tự sang kiểu số
data$Age <- as.numeric(as.character(data$Age))
data$HoursPerWeek <- as.numeric(as.character(data$HoursPerWeek))
data$TotalHours <- as.numeric(as.character(data$TotalHours))
# Tính toán trung bình của một cột và thay thế các giá trị "NA"
mean_value <- mean(data$Age, na.rm = TRUE)
data$Age[is.na(data$Age)] <- mean_value
mean_value <- mean(data$HoursPerWeek, na.rm = TRUE)
data$HoursPerWeek[is.na(data$HoursPerWeek)] <- mean_value
mean_value <- mean(data$TotalHours, na.rm = TRUE)
data$TotalHours[is.na(data$TotalHours)] <- mean_value
# tổng quan dữ liệu
summary(data)
# vẽ biểu đồ
par(mfrow = c(2, 1))
hist(data$LeagueIndex, main = "Histogram of LeagueIndex", xlim = c(1,8))
boxplot(data$LeagueIndex, main = "Histogram of LeagueIndex")
par(mfrow = c(2, 1))
hist(data$Age, main = "Histogram of Age")
boxplot(data$Age, main = "Histogram of Age")
par(mfrow = c(2, 1))
hist(data$HoursPerWeek, main = "Histogram of HoursPerWeek" )
boxplot(data$HoursPerWeek, main = "Histogram of HoursPerWeek")
par(mfrow = c(2, 1))
hist(data$TotalHours, main = "Histogram of TotalHours")
boxplot(data$TotalHours, main = "Histogram of TotalHours")
par(mfrow = c(2, 1))
hist(data$APM, main = "Histogram of Action per minute")
boxplot(data$APM, main = "Histogram of Action per minute")
par(mfrow = c(2, 1))
hist(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
boxplot(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
par(mfrow = c(2, 1))
hist(data$ActionLatency, main = "Histogram of ActionLatency")
boxplot(data$ActionLatency, main = "Histogram of ActionLatency")
par(mfrow = c(2, 1))
hist(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
boxplot(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
par(mfrow = c(2, 1))
hist(data$LeagueIndex, main = "Histogram of LeagueIndex", xlim = c(1,8))
boxplot(data$LeagueIndex, main = "Histogram of LeagueIndex")
par(mfrow = c(2, 1))
hist(data$Age, main = "Histogram of Age")
boxplot(data$Age, main = "Histogram of Age")
par(mfrow = c(2, 1))
hist(data$HoursPerWeek, main = "Histogram of HoursPerWeek" )
boxplot(data$HoursPerWeek, main = "Histogram of HoursPerWeek")
par(mfrow = c(2, 1))
hist(data$TotalHours, main = "Histogram of TotalHours")
boxplot(data$TotalHours, main = "Histogram of TotalHours")
par(mfrow = c(2, 1))
hist(data$APM, main = "Histogram of Action per minute")
boxplot(data$APM, main = "Histogram of Action per minute")
par(mfrow = c(2, 1))
hist(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
boxplot(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
par(mfrow = c(2, 1))
hist(data$ActionLatency, main = "Histogram of ActionLatency")
boxplot(data$ActionLatency, main = "Histogram of ActionLatency")
par(mfrow = c(2, 1))
hist(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
boxplot(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
par(mfrow = c(2, 1))
hist(data$HoursPerWeek,
breaks = seq(0, 168, by = 12),  # Chia bins mỗi 12 giờ (nửa ngày)
xlim = c(0, 168),               # Giới hạn trục x từ 0 đến 168
ylim = c(0, max(table(data$HoursPerWeek)) + 10),  # Giới hạn trục y dựa trên dữ liệu
xlab = "Hours Per Week",        # Nhãn trục x
ylab = "Frequency",             # Nhãn trục y
main = "Histogram of Hours Per Week")  # Tiêu đề biểu đồ
par(mfrow = c(2, 1))
hist(data$TotalHours, main = "Histogram of TotalHours")
boxplot(data$TotalHours, main = "Histogram of TotalHours")
par(mfrow = c(2, 1))
hist(data$APM, main = "Histogram of Action per minute")
boxplot(data$APM, main = "Histogram of Action per minute")
par(mfrow = c(2, 1))
hist(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
boxplot(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
par(mfrow = c(2, 1))
hist(data$ActionLatency, main = "Histogram of ActionLatency")
boxplot(data$ActionLatency, main = "Histogram of ActionLatency")
par(mfrow = c(2, 1))
hist(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
boxplot(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
source("D:/xstk-2.0/BTL/codeR.R", echo=TRUE)
axis(1, at = seq(0, 168, by = 10), labels = seq(0, 168, by = 10))
par(mfrow = c(2, 1))
hist(data$TotalHours, main = "Histogram of TotalHours")
boxplot(data$TotalHours, main = "Histogram of TotalHours")
par(mfrow = c(2, 1))
hist(data$APM, main = "Histogram of Action per minute")
boxplot(data$APM, main = "Histogram of Action per minute")
par(mfrow = c(2, 1))
hist(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
boxplot(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
par(mfrow = c(2, 1))
hist(data$ActionLatency, main = "Histogram of ActionLatency")
boxplot(data$ActionLatency, main = "Histogram of ActionLatency")
par(mfrow = c(2, 1))
hist(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
boxplot(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
#par(mfrow = c(2, 1))
hist(data$HoursPerWeek,
breaks = seq(0, 168, by = 12),  # Chia bins mỗi 12 giờ (nửa ngày)
xlim = c(0, 168),               # Giới hạn trục x từ 0 đến 168
ylim = c(0, max(table(data$HoursPerWeek)) + 10),  # Giới hạn trục y dựa trên dữ liệu
xlab = "Hours Per Week",        # Nhãn trục x
ylab = "Frequency",             # Nhãn trục y
main = "Histogram of Hours Per Week")  # Tiêu đề biểu đồ
axis(1, at = seq(0, 168, by = 10), labels = seq(0, 168, by = 10))
par(mfrow = c(2, 1))
hist(data$TotalHours, main = "Histogram of TotalHours")
boxplot(data$TotalHours, main = "Histogram of TotalHours")
par(mfrow = c(2, 1))
hist(data$APM, main = "Histogram of Action per minute")
boxplot(data$APM, main = "Histogram of Action per minute")
par(mfrow = c(2, 1))
hist(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
boxplot(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
par(mfrow = c(2, 1))
hist(data$ActionLatency, main = "Histogram of ActionLatency")
boxplot(data$ActionLatency, main = "Histogram of ActionLatency")
par(mfrow = c(2, 1))
hist(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
boxplot(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
#par(mfrow = c(2, 1))
hist(data$HoursPerWeek,
breaks = seq(0, 168, by = 12),  # Chia bins mỗi 12 giờ (nửa ngày)
xlim = c(0, 168),               # Giới hạn trục x từ 0 đến 168
#ylim = c(0, max(table(data$HoursPerWeek)) + 10),  # Giới hạn trục y dựa trên dữ liệu
xlab = "Hours Per Week",        # Nhãn trục x
ylab = "Frequency",             # Nhãn trục y
main = "Histogram of Hours Per Week")  # Tiêu đề biểu đồ
axis(1, at = seq(0, 168, by = 10), labels = seq(0, 168, by = 10))
par(mfrow = c(2, 1))
hist(data$TotalHours, main = "Histogram of TotalHours")
boxplot(data$TotalHours, main = "Histogram of TotalHours")
par(mfrow = c(2, 1))
hist(data$APM, main = "Histogram of Action per minute")
boxplot(data$APM, main = "Histogram of Action per minute")
par(mfrow = c(2, 1))
hist(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
boxplot(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
par(mfrow = c(2, 1))
hist(data$ActionLatency, main = "Histogram of ActionLatency")
boxplot(data$ActionLatency, main = "Histogram of ActionLatency")
par(mfrow = c(2, 1))
hist(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
boxplot(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
par(mfrow = c(2, 1))
hist(data$HoursPerWeek,
breaks = seq(0, 168, by = 12),  # Chia bins mỗi 12 giờ (nửa ngày)
xlim = c(0, 168),               # Giới hạn trục x từ 0 đến 168
#ylim = c(0, max(table(data$HoursPerWeek)) + 10),  # Giới hạn trục y dựa trên dữ liệu
xlab = "Hours Per Week",        # Nhãn trục x
ylab = "Frequency",             # Nhãn trục y
main = "Histogram of Hours Per Week")  # Tiêu đề biểu đồ
axis(1, at = seq(0, 168, by = 10), labels = seq(0, 168, by = 10))
boxplot(data$HoursPerWeek, main = "Histogram of HoursPerWeek")
par(mfrow = c(2, 1))
hist(data$TotalHours, main = "Histogram of TotalHours")
boxplot(data$TotalHours, main = "Histogram of TotalHours")
par(mfrow = c(2, 1))
hist(data$APM, main = "Histogram of Action per minute")
boxplot(data$APM, main = "Histogram of Action per minute")
par(mfrow = c(2, 1))
hist(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
boxplot(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
par(mfrow = c(2, 1))
hist(data$ActionLatency, main = "Histogram of ActionLatency")
boxplot(data$ActionLatency, main = "Histogram of ActionLatency")
par(mfrow = c(2, 1))
hist(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
boxplot(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
hist(data$TotalHours, main = "Histogram of TotalHours", xlim = c(0, 25000))
boxplot(data$TotalHours, main = "Histogram of TotalHours")
par(mfrow = c(2, 1))
hist(data$APM, main = "Histogram of Action per minute")
boxplot(data$APM, main = "Histogram of Action per minute")
par(mfrow = c(2, 1))
hist(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
boxplot(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
par(mfrow = c(2, 1))
hist(data$ActionLatency, main = "Histogram of ActionLatency")
boxplot(data$ActionLatency, main = "Histogram of ActionLatency")
par(mfrow = c(2, 1))
hist(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
boxplot(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
source("D:/xstk-2.0/BTL/codeR.R", echo=TRUE)
boxplot(data$APM, main = "Histogram of Action per minute")
source("D:/xstk-2.0/BTL/codeR.R", echo=TRUE)
specific_value <- 4
frequency <- sum(data$LeagueIndex == specific_value, na.rm = TRUE)
print(frequency)
specific_value <- 5
frequency <- sum(data$LeagueIndex == specific_value, na.rm = TRUE)
print(frequency)
specific_value <- 16
frequency <- sum(data$Age == specific_value, na.rm = TRUE)
print(frequency)
#đếm tần suất của tất cả các giá trị trong cột
frequency_table <- table(data$HoursPerWeek)
print(frequency_table)
par(mfrow = c(2, 1))
hist(data$APM, main = "Histogram of Action per minute")
boxplot(data$APM, main = "Histogram of Action per minute")
par(mfrow = c(2, 1))
hist(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
boxplot(data$UniqueHotkeys, main = "Histogram of UniqueHotkeys")
par(mfrow = c(2, 1))
hist(data$ActionLatency, main = "Histogram of ActionLatency")
boxplot(data$ActionLatency, main = "Histogram of ActionLatency")
par(mfrow = c(2, 1))
hist(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
boxplot(data$TotalMapExplored, main = "Histogram of TotalMapExplored")
# đếm số lần xuất hiện của 1 giá trị cụ thể trong cột
specific_value <- 16
frequency <- sum(data$Age == specific_value, na.rm = TRUE)
print(frequency)
#đếm tần suất của tất cả các giá trị trong cột
frequency_table <- table(data$HoursPerWeek)
print(frequency_table)
# đếm số lần xuất hiện của 1 giá trị cụ thể trong cột
specific_value <- 5
frequency <- sum(data$UniqueHotkeys == specific_value, na.rm = TRUE)
print(frequency)
#đếm tần suất của tất cả các giá trị trong cột
frequency_table <- table(data$HoursPerWeek)
print(frequency_table)
library(readr)
data <- read.csv("D:/xstk-2.0/BTL/skillcraft1+master+table+dataset/SkillCraft1_Dataset.csv")
View(data)
head(data, 10)
# chọn các biến quan tâm
data <- data[,c(2,3, 4,5,6, 9, 14, 16)]
# Kiểm tra sự hiện diện của "?" trong từng cột
has_question_mark <- sapply(data, function(x) sum(x == "?", na.rm = TRUE))
print(has_question_mark)
# Thay thế "?" bằng NA trong toàn bộ data frame
data[data == "?"] <- NA
# Chuyển đổi các cột từ kiểu ký tự sang kiểu số
data$Age <- as.numeric(as.character(data$Age))
data$HoursPerWeek <- as.numeric(as.character(data$HoursPerWeek))
data$TotalHours <- as.numeric(as.character(data$TotalHours))
# Tính toán trung bình của một cột và thay thế các giá trị "NA"
mean_value <- mean(data$Age, na.rm = TRUE)
data$Age[is.na(data$Age)] <- mean_value
mean_value <- mean(data$HoursPerWeek, na.rm = TRUE)
data$HoursPerWeek[is.na(data$HoursPerWeek)] <- mean_value
mean_value <- mean(data$TotalHours, na.rm = TRUE)
data$TotalHours[is.na(data$TotalHours)] <- mean_value
# tổng quan dữ liệu
summary(data)
# vẽ biểu đồ
par(mfrow = c(2, 1))
hist(data$LeagueIndex, main = "Histogram of LeagueIndex", xlim = c(1,8))
boxplot(data$LeagueIndex, main = "Histogram of LeagueIndex")
par(mfrow = c(2, 1))
hist(data$Age, main = "Histogram of Age")
boxplot(data$Age, main = "Histogram of Age")
par(mfrow = c(2, 1))
hist(data$HoursPerWeek,
breaks = seq(0, 168, by = 12),  # Chia bins mỗi 12 giờ (nửa ngày)
xlim = c(0, 168),               # Giới hạn trục x từ 0 đến 168
#ylim = c(0, max(table(data$HoursPerWeek)) + 10),  # Giới hạn trục y dựa trên dữ liệu
xlab = "Hours Per Week",        # Nhãn trục x
ylab = "Frequency",             # Nhãn trục y
main = "Histogram of Hours Per Week")  # Tiêu đề biểu đồ
boxplot(data$HoursPerWeek, main = "Histogram of HoursPerWeek")
par(mfrow = c(2, 1))
hist(data$TotalHours, breaks = seq(0, 25000, by = 1000),  # Chia bins mỗi 1000 giờ
xlim = c(0, 25000),                 # Giới hạn trục x từ 0 đến 25.000
ylim = c(0, 600))
# đếm số lần xuất hiện của 1 giá trị cụ thể trong cột
specific_value <- 21
frequency <- sum(data$TotalHours == specific_value, na.rm = TRUE)
print(frequency)
# đếm số lần xuất hiện của 1 giá trị cụ thể trong cột
specific_value <- 21
frequency <- sum(data$TotalMapExplored == specific_value, na.rm = TRUE)
print(frequency)
specific_value <- 22
frequency <- sum(data$TotalMapExplored == specific_value, na.rm = TRUE)
print(frequency)
specific_value <- 23
frequency <- sum(data$TotalMapExplored == specific_value, na.rm = TRUE)
print(frequency)
specific_value <- 24
frequency <- sum(data$TotalMapExplored == specific_value, na.rm = TRUE)
print(frequency)
# Vẽ biểu đồ heatmap cho ma trận tương quan
corrplot(cor_matrix, method = "color", type = "lower",
tl.col = "black", tl.srt = 45,
addCoef.col = "black",
number.cex = 0.7, # Độ lớn của hệ số tương quan
col = colorRampPalette(c("red", "white", "blue"))(200),
title = "Correlation Matrix", mar = c(0, 0, 1, 0))
# Tính ma trận tương quan cho các biến số trong dataframe
cor_matrix <- cor(data[, c("LeagueIndex", "Age", "HoursPerWeek", "TotalHours")], use = "complete.obs")
# Vẽ biểu đồ heatmap cho ma trận tương quan
corrplot(cor_matrix, method = "color", type = "lower",
tl.col = "black", tl.srt = 45,
addCoef.col = "black",
number.cex = 0.7, # Độ lớn của hệ số tương quan
col = colorRampPalette(c("red", "white", "blue"))(200),
title = "Correlation Matrix", mar = c(0, 0, 1, 0))
# Tính ma trận tương quan cho các biến số trong dataframe
cor_matrix <- cor(data[, c("LeagueIndex", "Age", "HoursPerWeek", "TotalHours"
, "APM", "UniqueHotkeys", "ActionLatency", "TotalMapExplored")], use = "complete.obs")
# Vẽ biểu đồ heatmap cho ma trận tương quan
corrplot(cor_matrix, method = "color", type = "lower",
tl.col = "black", tl.srt = 45,
addCoef.col = "black",
number.cex = 0.7, # Độ lớn của hệ số tương quan
col = colorRampPalette(c("red", "white", "blue"))(200),
title = "Correlation Matrix", mar = c(0, 0, 1, 0))
# Tính ma trận tương quan cho các biến số trong dataframe
cor_matrix <- cor(data[, c("LeagueIndex", "Age", "HoursPerWeek", "TotalHours"
, "APM", "UniqueHotkeys", "ActionLatency", "TotalMapExplored")], use = "complete.obs")
# Vẽ biểu đồ heatmap cho ma trận tương quan
corrplot(cor_matrix, method = "color", type = "lower",
tl.col = "black", tl.srt = 45,
addCoef.col = "black",
number.cex = 0.7, # Độ lớn của hệ số tương quan
col = colorRampPalette(c("red", "white", "blue"))(200),
title = "Correlation Matrix", mar = c(0, 0, 1, 0))
source("D:/xstk-2.0/BTL/codeR.R", echo=TRUE)
install.packages("ggplot2")
install.packages("ggplot2")
install.packages("ggplot2")
library(ggplot2)
ggplot(mtcars, aes(x = drat, y = mpg)) +
geom_point()
# Tính ma trận tương quan cho các biến số trong dataframe
cor_matrix <- cor(data[, c("LeagueIndex", "Age", "HoursPerWeek", "TotalHours"
, "APM", "UniqueHotkeys", "ActionLatency", "TotalMapExplored")], use = "complete.obs")
# Vẽ biểu đồ heatmap cho ma trận tương quan
corrplot(cor_matrix, method = "color", type = "lower",
tl.col = "black", tl.srt = 45,
addCoef.col = "black",
number.cex = 0.7, # Độ lớn của hệ số tương quan
col = colorRampPalette(c("red", "white", "blue"))(200),
title = "Correlation Matrix", mar = c(0, 0, 1, 0))
# Tính ma trận tương quan cho các biến số trong dataframe
cor_matrix <- cor(data[, c("LeagueIndex", "Age", "HoursPerWeek", "TotalHours"
, "APM", "UniqueHotkeys", "ActionLatency", "TotalMapExplored")], use = "complete.obs")
# Vẽ biểu đồ heatmap cho ma trận tương quan
corrplot(cor_matrix, method = "color", type = "lower",
tl.col = "black", tl.srt = 45,
addCoef.col = "black",
number.cex = 0.7, # Độ lớn của hệ số tương quan
col = colorRampPalette(c("red", "white", "blue"))(200),
title = "Correlation Matrix", mar = c(0, 0, 1, 0))
source("D:/xstk-2.0/BTL/codeR.R", echo=TRUE)
corrplot(corr = cor(new_data[3:13]),
method = 'color',
order = 'FPC',
title = "correlation plot",
tl.cex = 0.7,
addCoef.col = 'red',
number.cex = 0.7,
addgrid.col = 0.1,
)
title = "correlation plot",
title = "correlation plot",
setwd("F:/R")
#setwd("F:/R")
m  = cor(data)
summary(m)
corrplot(m, method = "number")
#setwd("F:/R")
m  = cor(data)
summary(m)
corrplot(m, method = "number")
#setwd("F:/R")
m  = cor(data)
summary(m)
corrplot(m, method = "number")
#load the dataset
data(data)
#fit a regression model
model <- lm(mpg~disp+hp, data=mtcars)
#get list of residuals
res <- resid(model)
#load the dataset
data(data)
#fit a regression model
model <- lm(mpg~disp+hp, data=mtcars)
#get list of residuals
res <- resid(model)
#load the dataset
data(data)
#fit a regression model
model <- lm(mpg~disp+hp, data=mtcars)
#get list of residuals
res <- resid(model)
model <- lm(mpg ~ disp + hp, data = mtcars)
#load the dataset
data(mtcars)
#fit a regression model
model <- lm(mpg~disp+hp, data=mtcars)
#get list of residuals
res <- resid(model)
#-- Biểu đồ phần dư
fitted(formula)
#-- Biểu đồ phần dư
fitted(formula)
#-- Biểu đồ phần dư
# Load the dataset
data(mtcars)
# Fit a regression model
model <- lm(mpg ~ disp + hp, data = mtcars)
# Get the residuals
res <- resid(model)
# Produce residual vs. fitted plot
plot(fitted(model), res)
abline(0, 0)  # Add a horizontal line at 0
#-- Biểu đồ phần dư
# Load the dataset
data(mtcars)
# Fit a regression model
model <- lm(mpg ~ disp + hp, data = mtcars)
# Get the residuals
res <- resid(model)
# Produce residual vs. fitted plot
plot(fitted(model), res)
abline(0, 0)  # Add a horizontal line at 0
# Create Q-Q plot for residuals
qqnorm(res)
qqline(res)  # Add a straight diagonal line to the plot
# Create density plot of residuals
plot(density(res))
#-- Biểu đồ phần dư
# Load the dataset
data(mtcars)
# Fit a regression model
model <- lm(mpg ~ disp + hp, data = mtcars)
# ve 4 biểu đồ
par(mfrow = c(2, 2))  # Arrange plots in a 2x2 grid
plot(model)
# Residuals vs Fitted
plot(model$fitted.values, resid(model),
main = "Residuals vs Fitted",
xlab = "Fitted values",
ylab = "Residuals")
abline(h = 0, col = "red")
# Q-Q Plot
qqnorm(resid(model))
qqline(resid(model), col = "red")
# Scale-Location Plot
plot(model$fitted.values, sqrt(abs(resid(model))),
main = "Scale-Location",
xlab = "Fitted values",
ylab = "Square Root of |Residuals|")
abline(h = 0, col = "red")
# Residuals vs Leverage
plot(model, which = 5)
summary(model)
#-- Biểu đồ phần dư
# Ví dụ mô hình hồi quy tuyến tính
model <- lm(LeagueIndex ~ Age + HoursPerWeek + TotalHours + APM + UniqueHotkeys + ActionLatency + TotalMapExplored, data = data)
# Vẽ các biểu đồ chẩn đoán
par(mfrow = c(2, 2)) # Cài đặt layout 2x2 cho 4 biểu đồ
plot(model)
summary(model)
#hồi quy tuyến tính
predictions <- predict(model, newdata = data)
#hồi quy tuyến tính
predictions <- predict(model, newdata = data)
# Vẽ các biểu đồ chẩn đoán
par(mfrow = c(2, 2)) # Chia cửa sổ đồ họa thành 4 phần
plot(model)
# Dự đoán giá trị LeagueIndex dựa trên dữ liệu hiện tại
predictions <- predict(model, newdata = data)
# Dự đoán giá trị LeagueIndex dựa trên dữ liệu hiện tại
predictions <- predict(model, newdata = data)
head(predictions)
# dự đoán
# Dự đoán giá trị LeagueIndex dựa trên dữ liệu hiện tại
predictions <- predict(model, newdata = data)
head(predictions)
# Ví dụ về dữ liệu mới
new_data <- data.frame(
Age = c(25, 30, 22),
HoursPerWeek = c(15, 20, 35),
TotalHours = c(2000, 5000, 300),
APM = c(100, 120, 85),
UniqueHotkeys = c(5, 7, 4),
ActionLatency = c(50, 45, 60),
TotalMapExplored = c(20, 25, 18)
)
# Dự đoán giá trị LeagueIndex cho dữ liệu mới
new_predictions <- predict(model, newdata = new_data)
# Hiển thị các dự đoán
new_predictions
