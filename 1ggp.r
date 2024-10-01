# Завантажуємо бібліотеки
library(ggplot2)
library(data.table)
library(patchwork)

# Create a table with data on electric vehicles
dt <- data.table(
  model = c("Tesla Model 3", "Ford Mustang Mach-E", "BMW i4", "Hyundai Ioniq 5", "Kia EV6",
            "Nissan Ariya", "Lucid Air", "Polestar 2", "Rivian R1T", "Chevrolet Bolt EV",
            "Volkswagen ID.4", "Mercedes EQS", "Porsche Taycan", "Volvo XC40 Recharge", "Audi Q4 e-tron"),
  year = c(2023, 2023, 2023, 2023, 2023, 2024, 2024, 2023, 2024, 2024, 2023, 2024, 2023, 2024, 2023),
  city_range_km_per_kWh = c(6.5, 5.8, 5.7, 6.3, 6.2, 5.9, 6.6, 6.0, 5.5, 6.1, 5.7, 6.4, 5.3, 5.9, 6.0),
  battery_capacity_kWh = c(60, 90, 80, 77, 77, 63, 112, 80, 135, 66, 77, 108, 90, 78, 82)
)

print(dt)

cars <- dt[year == 2023 & !(battery_capacity_kWh %in% c(60, 82))]
cars$battery_capacity  <- factor(cars$battery_capacity_kWh)

p = ggplot(cars, aes(x=city_range_km_per_kWh, color=battery_capacity, linetype=battery_capacity)) +
  geom_density() +
  labs(title="Electricity Efficiency by Battery capacity",
       x = "City km per kWh")


p1 = ggplot(cars, aes(x=city_range_km_per_kWh, fill=battery_capacity)) +
  geom_density(alpha=.4) +
  labs(title="Electricity Efficiency by Battery capacity",
       x = "City km per kWh")

print(p+p1)