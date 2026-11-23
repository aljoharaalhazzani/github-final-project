#!/usr/bin/env bash

read -r -p "Enter the principal amount: " principal
read -r -p "Enter the annual interest rate (%): " rate
read -r -p "Enter the time period in years: " years

awk -v p="$principal" -v r="$rate" -v t="$years" \
  'BEGIN { printf "Simple interest: %.2f\n", (p * r * t) / 100 }'
