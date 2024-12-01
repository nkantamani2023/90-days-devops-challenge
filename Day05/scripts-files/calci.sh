#!/bin/bash

# Function to perform addition
addition() {
    echo -n "Enter first number: "
    read a
    echo -n "Enter second number: "
    read b
    result=$((a + b))
    echo "Result: $a + $b = $result"
}

# Function to perform subtraction
subtraction() {
    echo -n "Enter first number: "
    read a
    echo -n "Enter second number: "
    read b
    result=$((a - b))
    echo "Result: $a - $b = $result"
}

# Function to perform multiplication
multiplication() {
    echo -n "Enter first number: "
    read a
    echo -n "Enter second number: "
    read b
    result=$((a * b))
    echo "Result: $a * $b = $result"
}

# Function to perform division
division() {
    echo -n "Enter first number: "
    read a
    echo -n "Enter second number: "
    read b
    if [ $b -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
    else
        result=$(echo "scale=2; $a / $b" | bc)
        echo "Result: $a / $b = $result"
    fi
}

# Main menu
while true; do
    echo ""
    echo "Simple Calculator"
    echo "-----------------"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
    echo -n "Choose an option: "
    read choice

    case $choice in
        1) addition ;;
        2) subtraction ;;
        3) multiplication ;;
        4) division ;;
        5) echo "Exiting..."; break ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done
