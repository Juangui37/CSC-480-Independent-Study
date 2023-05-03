from locust import HttpUser, task
from pymongo import MongoClient

# Connect to MongoDB Atlas
client = MongoClient("mongodb+srv://juangui37:Pacho1414@cluster0.eobads9.mongodb.net/?retryWrites=true&w=majority", server_api=ServerApi('1'), tls=True, tlsAllowInvalidCertificates=True))
db = client.housing
propertyinfo = db.propertyinfo

class MongoUser(HttpUser):
    @task
    def find_property_info(self):
        # Find all MLSNum with ListPrice greater than $500,000
        result = propertyinfo.find({"ListPrice": {"$gt": 500000}}).sort("YearBuilt")
        for doc in result:
            print(doc["MLSNum"], doc["Status"], doc["Address"], doc["City"], doc["Acres"], doc["YearBuilt"])
    
    @task
    def find_prop_type(self):
        # Find all distinct PropType
        result = propertyinfo.distinct("PropType")
        print(result)
    
    @task
    def count_houses(self):
        # Count the number of houses with HouseStatus of "For Sale"
        result = propertyinfo.count_documents({"Status": "For Sale"})
        print(result)
