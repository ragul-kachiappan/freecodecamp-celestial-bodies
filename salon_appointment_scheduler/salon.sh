#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"
echo -e "\n~~~~~~~~ COOL SALON ~~~~~~~"
echo -e "\nWelcome to COOL SALON, how can I help you?"
OPTIONS=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id")  
MAIN_MENU(){
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi
  echo "$OPTIONS"|while read SERVICE_ID BAR NAME
  do
    echo -e "\n$SERVICE_ID) $NAME"
  done
  read SERVICE_ID_SELECTED

  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
  if [[ -z $SERVICE_NAME ]]
  then
    MAIN_MENU "I could not find that service. What would you like today?"
  else
    echo -e "\nWhat's your phone number?"
    read CUSTOMER_PHONE
    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")
    if [[ -z $CUSTOMER_NAME ]]
    then
      echo -e "\nI don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name,phone) VALUES('$CUSTOMER_NAME','$CUSTOMER_PHONE')")
    fi
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
    echo -e "\nWhat time would you like your $SERVICE_NAME, $CUSTOMER_NAME"
    read SERVICE_TIME
    INSERT_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID_SELECTED,'$SERVICE_TIME')")
  

    echo -e "\nI have put you down for a$SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
  

}



MAIN_MENU
