# Load necessary libraries
library(ggplot2)
library(data.table)
library(patchwork)

# Example data table similar to mpg dataset
dt <- data.table(
  model = c("Tesla Model 3", "Ford Mustang Mach-E", "BMW i4", "Hyundai Ioniq 5", "Kia EV6",
            "Nissan Ariya", "Lucid Air", "Polestar 2", "Rivian R1T", "Chevrolet Bolt EV",
            "Volkswagen ID.4", "Mercedes EQS", "Porsche Taycan", "Volvo XC40 Recharge", "Audi Q4 e-tron"),
  year = c(2023, 2023, 2023, 2023, 2023, 2024, 2024, 2023, 2024, 2024, 2023, 2024, 2023, 2024, 2023),
  city_range_km_per_kWh = c(6.5, 5.8, 5.7, 6.3, 6.2, 5.9, 6.6, 6.0, 5.5, 6.1, 5.7, 6.4, 5.3, 5.9, 6.0)
)

# Filter data for the year 2008
cars <- dt[year == 2024]
print(cars)
# Default kernel density plot
p = ggplot(cars, aes(x = city_range_km_per_kWh)) +
  geom_density() +
  labs(title = "Default kernel density plot")

# Kernel density plot with fill
p1 = ggplot(cars, aes(x = city_range_km_per_kWh)) +
  geom_density(fill = "blue") +
  labs(title = "Filled kernel density plot", x = "City km per kWh")

# Estimate bandwidth
bw_value <- bw.nrd0(cars$city_range_km_per_kWh)
print(bw_value)

# Kernel density plot with specified bandwidth
p2 = ggplot(cars, aes(x = city_range_km_per_kWh)) +
  geom_density(fill = "blue", bw = 0.5) +
  labs(title = "Kernel density plot with bw=0.5", x = "City km per kWh")

'library(gridExtra)
# Combine the plots with gridExtra
grid.arrange(p, p1, p2, widths = c(1, 1), heights = c(2, 2)) '

print(p+p1+p2)