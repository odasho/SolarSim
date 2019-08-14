getwd()            # To find working directory

# READ .CSV FILES

summer_sim_results <- read.csv(file = "Documents/summer_energy.csv", sep = ";", header = TRUE)
summer_sim_results # Check if the results are formatted correctly

autumn_sim_results <- read.csv(file = "Documents/autumn_energy.csv", sep = ";", header = TRUE)
autumn_sim_results # Check if the results are formatted correctly

# CREATE BOXPLOTS FROM DATA

boxplot(summer_sim_results$totalProductionkWh, autumn_sim_results$totalProductionkWh,
        main = "Production in building X",
        las = 1,
        ylab = "kWh",
        names = c("Summer_Prod", "Autumn_Prod"))

boxplot(summer_sim_results$totalConsumptionkWh, autumn_sim_results$totalConsumptionkWh,
        main = "Consumption in building X",
        las = 1,
        ylab = "kWh",
        names = c("Summer_Cons", "Autumn_Cons"))

summary(summer_sim_results) # prints minimum value, 1st quartile, median, 3rd quartile and maximum value
summary(autumn_sim_results) # prints minimum value, 1st quartile, median, 3rd quartile and maximum value

# SUMMER DESCRIPTIVE STATISTICS

mean(summer_sim_results$totalProductionkWh)
sd(summer_sim_results$totalProductionkWh)
min(summer_sim_results$totalProductionkWh)
max(summer_sim_results$totalProductionkWh)
var(summer_sim_results$totalProductionkWh)

mean(summer_sim_results$totalConsumptionkWh)
sd(summer_sim_results$totalConsumptionkWh)
min(summer_sim_results$totalConsumptionkWh)
max(summer_sim_results$totalConsumptionkWh)
var(summer_sim_results$totalConsumptionkWh)

# AUTUMN DESCRIPTIVE STATISTICS

mean(autumn_sim_results$totalProductionkWh)
sd(autumn_sim_results$totalProductionkWh)
min(autumn_sim_results$totalProductionkWh)
max(autumn_sim_results$totalProductionkWh)
var(autumn_sim_results$totalProductionkWh)

mean(autumn_sim_results$totalConsumptionkWh)
sd(autumn_sim_results$totalConsumptionkWh)
min(autumn_sim_results$totalConsumptionkWh)
max(autumn_sim_results$totalConsumptionkWh)
var(autumn_sim_results$totalConsumptionkWh)

# SUMMER: Finding 95% confidence interval 

error <- qnorm(0.975)*sd(summer_sim_results$totalProductionkWh)/sqrt(100)
left <- mean(summer_sim_results$totalProductionkWh)-error
right <- mean(summer_sim_results$totalProductionkWh)+error
left
right

error <- qnorm(0.975)*sd(summer_sim_results$totalConsumptionkWh)/sqrt(100)
left <- mean(summer_sim_results$totalConsumptionkWh)-error
right <- mean(summer_sim_results$totalConsumptionkWh)+error
left
right

# AUTUMN: Finding 95% confidence interval 

error <- qnorm(0.975)*sd(autumn_sim_results$totalProductionkWh)/sqrt(100)
left <- mean(autumn_sim_results$totalProductionkWh)-error
right <- mean(autumn_sim_results$totalProductionkWh)+error
left
right

error <- qnorm(0.975)*sd(autumn_sim_results$totalConsumptionkWh)/sqrt(100)
left <- mean(autumn_sim_results$totalConsumptionkWh)-error
right <- mean(autumn_sim_results$totalConsumptionkWh)+error
left
right