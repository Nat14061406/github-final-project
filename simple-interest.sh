#!/bin/bash
# simple-interest.sh
# A calculator to compute simple interest based on user input.
#
# Input fields:
#   principal - the principal amount (initial sum of money)
#   rate      - the annual rate of interest (in percent)
#   time      - the time period (in years)
#
# Formula: Simple Interest = (principal * rate * time) / 100

# Prompt the user for the principal amount
read -p "Enter the principal amount: " principal

# Prompt the user for the rate of interest
read -p "Enter the rate of interest: " rate

# Prompt the user for the time period in years
read -p "Enter the time period (in years): " time

# Calculate the simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the result
echo "The simple interest is: $simple_interest"
