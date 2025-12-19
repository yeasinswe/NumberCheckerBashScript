#!/bin/bash

check_prime() {
    num=$1
       if [ $num -le 1 ]; then
           echo "$num is NOT Prime"
        return
    fi

        for ((i=2; i*i<=num; i++))
    do
          if [ $((num % i)) -eq 0 ]; then
            echo "$num is NOT Prime"
            return
        fi
    done
    echo "$num is Prime"
}

check_leap_year() {
      year=$1
    if (( (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0) )); then
          echo "$year is a Leap Year"
      else
           echo "$year is NOT a Leap Year"
    fi
}

    sum_of_series() {
          n=$1
        sum=$(( n * (n + 1) / 2 ))
      echo "Sum from 1 to $n is: $sum"
}

read -p "Enter a number: " number

while true
do
     echo " MENU "
    echo "1. Check Prime"
       echo "2. Check Leap Year"
      echo "3. Print Sum of Series (1 to n)"
      echo "4. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1) check_prime $number ;;
        2) check_leap_year $number ;;
        3) sum_of_series $number ;;
        4) echo "Exiting..."; break ;;
        *) echo "Invalid Choice" ;;
    esac
done
