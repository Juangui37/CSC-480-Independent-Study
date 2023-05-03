import time
from locust import HttpUser, task, between
import mysql.connector

class MySQLUser(HttpUser):

    wait_time = between(1, 5)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        # Connect to MySQL database
        self.mydb = mysql.connector.connect(
            host="localhost",
            user="admin",
            password="Pacho1414+++",
            database="housing"
        )
        self.mycursor = self.mydb.cursor()
        

    @task
    def query_database(self):
        # Query 1 Find all the MLSNum in PropertyInfo table with ListPrice greater than $500,000.
        self.mycursor.execute("SELECT MlSNum, HouseStatus, Address, City, Acres, YearBuilt FROM PropertyInfo WHERE ListPrice > 500000 ORDER BY YearBuilt")
        result = self.mycursor.fetchall()
        print("Results for Query 1:")
        for row in result:
            print(row)

    @task
    def on_stop(self):
        # Close MySQL connection
        self.mydb.close()
        self.mycursor.close()
