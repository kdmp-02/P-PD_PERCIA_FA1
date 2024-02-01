results <- read.csv("C:/Users/Admin/Desktop/Percia_RFiles/results1.csv")
results

attach(results)
names(results)

arch1

sapply(results[2:5], mean, na.rm = T)

sapply(results[2:5], median, na.rm = T)

sapply(results[2:5], sd, na.rm = T)

skew <- function(x) {
mean1 <- mean(x, na.rm = T)
median1 <- median(x, na.rm = T)
std1 <- sd(x, na.rm = T)
skew <- (3 * (mean1 - median1)) / std1
skew}

skew(arch1)

sapply(results[2:5], skew)

############################################


Females <- c( 57, 59, 78, 79, 60, 65, 68, 71, 75, 48, 51, 55, 56, 41, 43,
              44, 75, 78, 80, 81, 83, 83, 85)
Males <- c(48, 49, 49, 30, 30, 31, 32, 35, 37, 41, 86, 42, 51, 53, 56,
           42, 44, 50, 51, 65, 67, 51, 56, 58, 64, 64, 75)

stem(Males)

stem(Females)

boxplot(Females, Males, xlab="Males and Females of Class", ylab = "Scores", maim="Boxplot", col = c("pink", "lightblue"))

install.packages('tinytex')
tinytex::install_tinytex()
