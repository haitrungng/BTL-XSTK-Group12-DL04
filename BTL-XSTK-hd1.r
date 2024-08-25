#1. Đọc dữ liệu từ file CSV và hiển thị 6 hàng đầu của dữ liệu
auto_mpgData <- read.csv("C:/Users/Admin/Desktop/auto_mpg.csv", sep=";")
head(auto_mpgData)

#2.1a. Thay thế giá trị "?" bằng NA và kiểm tra số lượng giá trị NA trong mỗi cột
auto_mpgData[auto_mpgData == "?"] <- NA
apply(is.na(auto_mpgData), 2, sum)  # Tính tổng số giá trị NA trong mỗi cột

#2.1b. Loại bỏ các hàng chứa giá trị NA và kiểm tra lại số lượng giá trị NA
auto_mpgData <- na.omit(auto_mpgData)
apply(is.na(auto_mpgData), 2, sum)  # Kiểm tra lại số lượng giá trị NA sau khi loại bỏ

#2.2a. Kiểm tra kiểu dữ liệu của các cột
flagMpg <- is.numeric(auto_mpgData$mgp)
flagCylinders <- is.numeric(auto_mpgData$cylinders)
flagDisplacement <- is.numeric(auto_mpgData$displacement)
flagHorsePower <- is.numeric(auto_mpgData$horsepower)
flagWeight <- is.numeric(auto_mpgData$weight)
flagAcceleration <- is.numeric(auto_mpgData$acceleration)
flagYear <- is.numeric(auto_mpgData$model_year)
flagOrigin <- is.numeric(auto_mpgData$origin)
# Tạo bảng hiển thị kết quả kiểm tra kiểu dữ liệu
data.frame(flagMpg, flagCylinders, flagDisplacement,
           flagHorsePower, flagWeight, flagAcceleration,
           flagYear, flagOrigin)

#2.2b. Chuyển cột 'horsepower' thành kiểu số và kiểm tra lại
auto_mpgData$horsepower <- as.numeric(auto_mpgData$horsepower)
is.numeric(auto_mpgData$horsepower)

#2.2c. Thay thế các giá trị số trong cột 'origin' bằng tên khu vực
auto_mpgData$origin[auto_mpgData$origin == 1] <- "North American"
auto_mpgData$origin[auto_mpgData$origin == 2] <- "Europe"
auto_mpgData$origin[auto_mpgData$origin == 3] <- "Asia"

#2.3. Vẽ biểu đồ hộp cho cột 'horsepower', tìm và loại bỏ các giá trị ngoại lệ
boxplot(auto_mpgData$horsepower, ylab = "Horsepower", main = "Biểu đồ hộp của horsepower")
out <- boxplot.stats(auto_mpgData$horsepower)$out  # Xác định các giá trị ngoại lệ
out_ind <- which(auto_mpgData$horsepower %in% c(out))  # Tìm chỉ số của các giá trị ngoại lệ
clearData <- auto_mpgData[-out_ind, ]  # Loại bỏ các hàng chứa giá trị ngoại lệ
head(clearData, 10)  # Hiển thị 10 hàng đầu của dữ liệu đã loại bỏ giá trị ngoại lệ


#3.1. Tính toán các thống kê mô tả cho các biến số
continuousVar <- clearData[sapply(clearData, is.numeric)]  # Chọn các cột số
trung_binh <- apply(continuousVar, 2, mean)  # Tính trung bình
do_lech_chuan <- apply(continuousVar, 2, sd)  # Tính độ lệch chuẩn
GTLN <- apply(continuousVar, 2, max)  # Tính giá trị lớn nhất
GTNN <- apply(continuousVar, 2, min)  # Tính giá trị nhỏ nhất
trung_vi <- apply(continuousVar, 2, median)  # Tính trung vị
phan_vi1 <- apply(continuousVar, 2, quantile, probs = 0.25)  # Tính phân vị 25%
phan_vi3 <- apply(continuousVar, 2, quantile, probs = 0.75)  # Tính phân vị 75%

# Tạo bảng hiển thị các thống kê mô tả
t(data.frame(trung_binh, do_lech_chuan, GTLN, GTNN, trung_vi, phan_vi1, phan_vi3))

#3.2. Vẽ các biểu đồ phân phối và mối quan hệ giữa các biến
hist(clearData$mgp, main = "Biểu đồ phân phối của MPG", xlab = "MPG",
     col = heat.colors(9), labels = TRUE, ylim = c(0, 100))

# Biểu đồ hộp cho MPG theo từng khu vực
boxplot(clearData$mgp ~ clearData$origin, main = "Biểu đồ hộp của MPG theo khu vực", 
        ylab = "MPG", xlab = "Khu vực", col = c(2, 3, 4))

# Biểu đồ hộp cho MPG theo năm sản xuất
boxplot(clearData$mgp ~ clearData$model_year, main = "Biểu đồ hộp của MPG theo năm sản xuất", 
        ylab = "MPG", xlab = "Năm sản xuất", col = c(2, 3, 4, 5, 6))

# Biểu đồ hộp cho MPG theo số xy-lanh
boxplot(clearData$mgp ~ clearData$cylinders, main = "Biểu đồ hộp của MPG theo số xy-lanh", 
        ylab = "MPG", xlab = "Số xy-lanh", col = c(2, 3, 4, 5, 6))

# Biểu đồ phân tán giữa MPG và các biến liên tục
plot(clearData$displacement, clearData$mgp, main = "Biểu đồ phân tán của MPG và displacement", 
     ylab = "MPG", xlab = "Displacement", col = c(3))

plot(clearData$horsepower, clearData$mgp, main = "Biểu đồ phân tán của MPG và horsepower", 
     ylab = "MPG", xlab = "Horsepower", col = c(2))

plot(clearData$weight, clearData$mgp, main = "Biểu đồ phân tán của MPG và weight", 
     ylab = "MPG", xlab = "Weight", col = c(4))

plot(clearData$acceleration, clearData$mgp, main = "Biểu đồ phân tán của MPG và acceleration", 
     ylab = "MPG", xlab = "Acceleration", col = c(6))

dim(auto_mpgData)  # Kiểm tra số lượng hàng và cột

#4.1 Tạo mẫu huấn luyện và mẫu kiểm tra
auto_mpg1 <- auto_mpgData[1:200, ] # mẫu huấn luyện gồm 200 quan trắc 
auto_mpg1$origin <- as.numeric(factor(auto_mpg1$origin)) #chuyển các biến origin và car_name sang định tính
auto_mpg1$car_name <- as.numeric(factor(auto_mpg1$car_name))
head(auto_mpg1) #kiểm tra lại

remaining_indices <- setdiff(seq_len(nrow(auto_mpgData)), 1:200) #mẫu kiểm tra gồm các quan trắc còn lại đã được làm sạch
auto_mpg2 <- clearData[remaining_indices, ] 
auto_mpg2$origin <- as.numeric(factor(auto_mpg2$origin)) #chuyển các biến origin và car_name sang định tính
auto_mpg2$car_name <- as.numeric(factor(auto_mpg2$car_name))
head(auto_mpg2) #kiểm tra lại

#4.2 Mô hình hồi quy tuyến tính của biến phụ thuộc mpg 
#sử dụng mẫu huấn luyện
model_1 <- lm(mgp~., data=auto_mgp1)
summary(model_1)
model_2 <- lm(mgp~weight+model_year+origin, data=auto_mgp1) #Loại bỏ các biến độc lập không có ý nghĩa thống kê
summary(model_2)
confint(model_2) #tìm khoảng tin cậy
plot(model_2,1) 
plot(model_2,2)
plot(model_2,3)
plot(model_2,5)
#sử dụng mẫu kiểm tra
predict_mpg <- lm(mgp~weight+model_year+origin, data=auto_mgp2)
summary(predict_mpg)
confint(predict_mpg)
plot(predict_mpg,1) 
plot(predict_mpg,2)
plot(predict_mpg,3)
plot(predict_mpg,5)