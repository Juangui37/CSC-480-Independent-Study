# CSC 480 Lab Notebook/Journal


## 2/27/23

Today, I went through some of Dr. Dancik's videos from his CSC-301-01 Adv Web Develop & Scraping class.

More specifically I watched:

- Monday, March 21, 2022 at 10:02:32 AM: 

This video talks about the ethics of webscraping, the robots.txt of websites, and it shows of two examples of webscraping: Wetather.com and Easterns Major website.

This video also showed how to turn the extracted data from weather.com into a dataframe in which he created a barplot to see what day of the week would have the hottest day.

I followed along in both videos and part of the 'Weather Scraper' python notebook did not work. The notebook did not return the day of the week. This can either be because I'm using safari or because the page has updated.

I fixed this by going on the website the notebook provided, inspecting the page and looking to see what type of tag the day of the week had. The tag was different than in the notebook. The notebook showed a H2 (header 2?) but my safari site showed an H3. I changed the tag from H2 to H3 on the notebook and it worked properly.

- Wednesday, March 23, 2022 at 9:59:05 AM & 10:19:27 AM:

This video shows how to install selenium onto a desired web browser and then it shows a couple of examples of how Selenium can be used to automate and interact with other web browsers. I didn't fully follow along with the Selenium notebook because I have a macbook and don't know what the equivalent of XPath is.

## 3/04/23

Today, I continued trying to webscrape Zillow's website but, kept getting blocked because Zillow new I was using a bot. 

After a couple of hours of trying to understand the concepts of webscraping I realized a couple of things:
1. I have a minimal understanding to webscrapping and itll probably take me a while to get comfortable with this
2. I have no real interest in scrapping data and I probably won't do this ever again because API's are a thing
3. #his part of the project has taken up a lot of time

After this realizations, I opted for some help from the subreddit: /datasets [I posted on this subreddit asking for help.](https://www.reddit.com/r/datasets/comments/11hq8tf/webscraping_specific_zip_code_data_from_zillow/)  I also searched the subreddit to see if anyone had done anything like this. It turns out, this is a common practice. [I reached out to a reddit user who did a project similiar to mine.](https://www.reddit.com/r/datasets/comments/ug1by8/is_it_legal_to_make_an_open_source_github_repo/) I asked him if he was willing to share his github repository.

After a day, he got backed to me and shared his github repisotory. He created the zillow scraper using scappy.

## 3/06/2023

I took the time to follow the steps to initialize the project from Radlinsky's repisotory.

1. Install environment
mamba env create --name house_conda_env --file=configs/house_conda_env.yaml --force
2. Launch R, then run IRkernel::installspec(name = 'house_r', displayname = 'R House')
Update the scrapfly key in configs/config.yaml. See scrapfly.io for info.
3. Launch Jupyter lab/notebook (jupyter lab)
4. Run notebooks, in order:
01_Scrape.ipynb (scrapes each recent listing into a json saved to data/sold/)
02_Wrangle.ipynb (reads in all the jsons and combines them into a dataframe)
03_Explore.ipynb (plots/maps of the data)

These steps might sound and seem pretty self explanitory but, again I have little to no actual expierence using my macbook's terminal so I asked ChatGPT a ton of questions like:

- "Hi ChatGPT, what does this code mean:

Install environment
mamba env create --name house_conda_env --file=configs/house_conda_env.yaml --force
Launch R, then run IRkernel::installspec(name = 'house_r', displayname = 'R House')"

- "can you tell me very descriptively how i follow these steps?"

- "Can you tell me what this line of code means and what I’d have to do to run this on my terminal? I have mamba installed

mamba env create --name house_conda_env --file=configs/house_conda_env.yaml --force"

I evantually got Mamaba installed and realized that I needed to fork Radlinksy's repistory on my local computer and change the directory the code, '--file=configs/house_conda_en.yaml' to something that directs the terminal to the repisorty where I stored the forked redlinsky repo.

## 03/20/2023

I continued trying to gather data for my project in the least technical way possible.

I researched the who the best realtor companies in connecticut are from https://realestate.usnews.com/agents/connecticut/hartford/ and began to mass send this email:

"Hello!

My name is Juan Villegas, a senior in my last semester at Eastern Connecticut State University studying data science.
I’m reaching out to you because I’m doing a senior research project for my university, where I’m using data science to find insights and make data-driven decisions for buying a house. My project involves creating two data science models: Classification and predictive.

The classification model would show attributes associated to a budget of $250,000. For example, I might use a CART or random forest model that would indicate that the attributes most associated with that budget are: 3 bedrooms, 2 bathrooms, and the house type being colonial.

The predictive model would output the potential cost of a house given the attributes I feed the model. For example, if I give the model the town, number of beds, walk score, and lot size, it would provide an output based on those attributes and the data it’s learning from.

I need help getting the data for my project so that the insights correspond to the area of interest. I hope to gather data on sold and/or listed houses within 15 miles of the zip code ‘06183’.

After researching, I’m left with two options: web-scraping or asking a realtor for help/guidance. Of course, I’ve begun trying to web-scrape data from Zillow, Redfin, and realtor.com, but these sites have made it incredibly difficult to extract this valuable data.
Can you help me get or point me in the right direction to someone who can help me get a good sample of this type of data? 

Thanks,
Juan Villegas"

I reached out to a total of 10 companies and 4 indivudal realtors that I personally know. I'm hoping that at least 1 of these 14 options has something for me.

If not, Dr. Dancik has sent me code to create fake data for my project so that I can begin getting some practice with MongoDB & MySQL


## 03/22/2023

Great news! After reaching out to a couple of realtors, one finally got back to me and shared the housing data that im looking for... kinda. The realtor gave me about 2,000 records of housing data within a 15 mile radius of the zip code 06183 for both listed and sold homes but, it was specified for single family homes with 3 bed rooms and 2 batherooms. 

I reached back out to the realtor hoping I could recieve a less limited data set.

Other than the good news of recieving data, I have begun learning about MongoDB. At first, I watched some youtube tutorials, looked up regular written tutorials and evantually ended up on mongoDB's website where I enrolled in a 12 hour mongoDB course for beginners.

These are the resources I use are:
-  https://www.youtube.com/watch?v=7jH__3ieGS0
- https://www.tutorialspoint.com/mongodb/mongodb_environment.htm

The course I enrolled in is:


![Capture](https://user-images.githubusercontent.com/76864633/226918553-d06b9fbd-f294-4749-ba38-660e599feb00.PNG)

Its from https://university.mongodb.com/


## 3/31/2023

This week, I've had a hard time finding time to work on this project. My focus this week is learning MongoDB. During work this week, I had my regular daily meeting with my boss and I explained to him what I was doing for my project. He suggested I reached out to one of my co-workers who uses MongoDB in his everyday work to see if he can provide me some advice.

After Speaking with my coworker on tuesday the 28th, I was told that I should use some of my work hours to study. That's what ill be doing on friday (the 31st).

I have to strictly follow a Linkedin Learning video provided from cigna so I will have to restart my tutorial process from 0. I am however grateful that this tutorial focuses more on using a local computer as the main source of the databases rather than the MongoDB Atlas. I will spend more time in the command line getting myself more comfortable with MongoDB.

The first step in this tutorial is to install MongoDB onto my computer (I didn't before).

I have to install npm so that then I could use the command m to install mongodb.

I came accross an issue stating that my macbook didn't have the dependencies to run mongo so I went on the [Mongodb Site](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-os-x/) for help. I had to run this code in my terminal to Install MongoDB Community Edition:

      xcode-select --install

      brew tap mongodb/brew

      brew update

      brew install mongodb-community@6.0


I ran mongod --version and mongosh --versoion to check that MongoDB & mongo's bash was succesfully installed.

Lastly, I ran:

brew install mongodb-database-tools

to install mongos database tools.



## 03/31/2023

I have yet again started a new way to learn MongoDB, and its probably the way I shouldve started with in the first place... And thats: using [W3](https://www.w3schools.com/mongodb/index.php) and James Conlin as a reference for assistance

By following this way and asking James simple questions, I have been able to better learn how to use MongoDB.

I now understand that I do not want to run MongoDB only locally through my computer but, I want to use the Atlas web service that mongoDB provides so that it manages my database.

Following rhe instructions from W3Schools, I have learned to also use MongoDB's direct documentation on how to use their platform. 

I learned that I could import my data to my database in 3 different ways.

1. Using the 'mongoimport' command using the macbook's terminal
2. Using MongoDB's GUI * Compass *
3. Connecting to my database from VS Codes and using this IDE as my platform to play around with my database.

Since, I know that James already created a mongo database using the VS code Extension, I will follow that route.

** I have successfully learned how to connect to my database using the VSCode Extension **

## 03/31/2023 8:00pm

Before I import my housing data to my project. I thought about how I would create the schema for the housing data I recieved from the realtor.

After thinking about it for a minute, I realized that the housing data I recieved is pretty much only Property listing information. Since, I want to use this project to practice my NoSQL vs SQL skills, I want their to be an opprutunity for me to use joins/embbeded queries.

I decided I should use python to create 3 more columns:
- AgentID
- Agent Phone Number
- Agenter Email

Now I will include screenshot as how I want my MySQL & MongoDB tables to look like:

MySQL:


**PropertyInfo Table**

<img width="1079" alt="Screenshot 2023-03-31 at 7 57 49 PM" src="https://user-images.githubusercontent.com/76864633/229252174-90ee6ee5-353c-4cfa-a0ad-fe99437e79f0.png">


**Realtor Table**

<img width="142" alt="Screenshot 2023-03-31 at 7 58 25 PM" src="https://user-images.githubusercontent.com/76864633/229252296-204d055a-9b7a-4217-9fd0-c3ba32b6a8a6.png">


**RealtorListing Table**

<img width="395" alt="Screenshot 2023-03-31 at 7 58 11 PM" src="https://user-images.githubusercontent.com/76864633/229252227-196c552f-a5f7-4dde-a6cf-3784a72939f7.png">

My MongoDB will only have 2 collections:


## 04/01/2023

Today I went on CIGNA's University site to learn how to configure and set up MySQL on my local computer.

In this tutorial I learned:
- How to install MySQL
- How to install MySQL WorkBench
- How to create users and give them permissions
- How to create tables and query example databases using example data


I got my certification on linkedin:

<img width="372" alt="Screenshot 2023-04-02 at 11 43 14 AM" src="https://user-images.githubusercontent.com/76864633/229363660-afa1a2aa-3383-4686-8bb8-2d4670d0465d.png">


## 04/02/2023

Now, that I have configured everything for my MySQL, I will set up the 'Housing' Database. This database will have the 3 tables that I included before with all field names. Then, I will import the data from my local computer.

The SQL code I use to create my database and table's (& its fields) looks like this:

CREATE DATABASE Housing;
USE Housing;

CREATE TABLE PropertyInfo (
  MLSNum INT PRIMARY KEY,
  Status VARCHAR(255),
  StatusChangeTimestamp DATETIME,
  PropType VARCHAR(255),
  ListPrice FLOAT,
  ClosePrice FLOAT,
  Address VARCHAR(255),
  City VARCHAR(255),
  Acres FLOAT,
  SqFtTotal INT,
  SqFtEstHeatedAboveGrade INT,
  StyleOrRentType VARCHAR(255),
  RoomsTotal INT,
  BedsTotal INT,
  Bathrooms FLOAT,
  GaragePark VARCHAR(255),
  YearBuilt INT,
  DaysOnMarket INT
);

CREATE TABLE Realtor (
  AgentID INT PRIMARY KEY,
  ListingAgent VARCHAR(255),
  PhoneNumber VARCHAR(255),
  Email VARCHAR(255)
);

CREATE TABLE RealtorListing (
  MLSNum INT,
  AgentID INT,
  PRIMARY KEY (MLSNum, AgentID),
  FOREIGN KEY (MLSNum) REFERENCES PropertyInfo(MLSNum),
  FOREIGN KEY (AgentID) REFERENCES Realtor(AgentID)
);

I will now show you screenshots of the output the MySQL CommandLine gives me when I run:

SHOW DATABASES;

USE Housing;

SHOW TABLES;

SHOW COLUMNS FROM PropertyInfo;


SHOW DATABASES;

<img width="193" alt="Screenshot 2023-04-02 at 12 24 46 PM" src="https://user-images.githubusercontent.com/76864633/229365788-3c6f23d6-6aae-4d27-9819-a44e9447d99c.png">

USE Housing;
SHOW TABLES;

<img width="179" alt="Screenshot 2023-04-02 at 12 25 45 PM" src="https://user-images.githubusercontent.com/76864633/229365826-9a634632-387d-46b6-917c-79ec812cb6a9.png">


SHOW COLUMNS FROM PropertyInfo;

<img width="521" alt="Screenshot 2023-04-02 at 12 26 35 PM" src="https://user-images.githubusercontent.com/76864633/229365870-b3a906c4-41f0-4709-9811-e79c0f467471.png">

## 4/2/2023

I've tried importing data into my database using this SQL code:

            LOAD DATA INFILE '/Users/juanvillegas/Downloads/PropertyInfo.csv'
            INTO TABLE PropertyInfo
            FIELDS TERMINATED BY ',' 
            ENCLOSED BY '"'
            LINES TERMINATED BY '\n'
            IGNORE 1 ROWS;

I kept getting getting this error:

      Error Code: 1290. The MySQL server is running with the --secure-file-priv option so it cannot execute this statement

So I tried fixing it by [googling the error code](https://stackoverflow.com/questions/32737478/how-should-i-resolve-secure-file-priv-in-mysql)

I followed the steps to try and Disable the secure-file-priv setting in MySQL and I ended up breaking MySQL by creating a my.cnf file and pasting this:

      secure-file-priv = ""
      
      
I evantually fixed MySQL again.

## 04/03/2023

I wanted to create this entire database through SQL but, I couldn't figure out how to import data into my tables with these issues.

I decided to import my data using MySQL GUI - MySQL WorkBench.


To now test my database,

I will type of SQL commands and show the results to show what I have done thus far in MySQL.

From my macbooks Terminal:

mysql -u admin -p

*enters password*

SHOW DATABASES;

<img width="178" alt="Screenshot 2023-04-03 at 4 59 36 PM" src="https://user-images.githubusercontent.com/76864633/229626332-96795a7f-91f8-4ed5-8e33-1fc140b8ab8c.png">


USE Housing;

<img width="474" alt="Screenshot 2023-04-03 at 4 59 54 PM" src="https://user-images.githubusercontent.com/76864633/229626371-33c7336d-9218-4c5a-96cf-fa2eafa71c84.png">


SHOW TABLES;

<img width="176" alt="Screenshot 2023-04-03 at 5 00 08 PM" src="https://user-images.githubusercontent.com/76864633/229626407-db0cb109-4779-4aa4-99ce-f1c774c9d4f5.png">

DESCRIBE PropertyInfo;

<img width="520" alt="Screenshot 2023-04-03 at 5 00 23 PM" src="https://user-images.githubusercontent.com/76864633/229626462-8afa35b0-ddd3-420b-bde2-5631af8522c9.png">


SELECT MLSNum, ListPrice,

<img width="316" alt="Screenshot 2023-04-03 at 5 00 55 PM" src="https://user-images.githubusercontent.com/76864633/229626550-4aeeeb14-f3e8-4977-b586-2f495d6af16d.png">

**Some Things that took me a while to figure out was why some of my records weren't being uploaded. I realized that in my excel file, all my date columns had to be formated to 'yyyy-mm-dd'. I also had list & close price listed considered a FLOAT data type. My excel file did not have any decimals in this column so I changed the data type to an INT. I then realized that I had some empty columns in my list price column. I had to replace all the empty columns with 'null' so that MySQL would import everything.**


## 04/04/2023

I used today to get a good understanding of MongoDB.

I feel like playing around with MySQL made it easier to understand the set up process of a database

I realized that the MongoDB set up is a lot easier than the way I was learning. All you really need to do is follow [this documentation from Mongo's website and take your time reading things](https://www.mongodb.com/docs/atlas/getting-started/). 

**I started about 5 diffrernt tutorials/courses to learn mongo because I was so intimadted that I didn't comprehend anything...*

Anyways, today, I fully grasped how to use mongoDB on my terminal and it's GUI *Compass*. I learned how to look at the databases that I have, create collections & documents, and how to import the data that I imported into MySQL.

Let me show:

First, since I'm using MongoDB's Atlas service, I'm not actually running or managing MongoDB locally. MongoDB Atlas is a cloud-based database service that allows users and business's to easily store, manage, and access their data through 3rd party providers like amazon or microsoft. 

Before I could create a database, collections and documents, I had to create a Mongo Cluster. A cluster is a group of servers that work together to store and manage your data. I also had to configure my cluster by setting up security measures, defining data backup and recovery options, and specifying which types of data you want to store.

Once that was done, I was able to access MongoDB through my terminal.

To access MognoDB through your terminal when your running Mongo through Mongo Atlas you have to do the following:

1. Go to Atlas website
2. Click on Database under Deployment
3. Click on the three dot button and then 'Command Line Tools'
4. Click on Connect Instructions
5. Click on Connect with MongoDB Shell
6. Copy and paste your connection string in your terminal.

For example my connection string looks like this:

            mongosh "mongodb+srv://"ClusterName".sksxvtv.mongodb.net/"DatabaseConnectionName"" --apiVersion 1 --username j********
            
            
 Once you paste that into your terminal, you should be prompted to paste the password you created when you created your cluster.
 
 Then you should be connected.
 
 From there, you can start interacting with MongoDB.
 
 I like to start with  *Show Databases* or *Show dbs*  to see databases I have in my cluster and available to me.
 
 
 ![Screenshot 2023-04-05 at 2 09 31 PM](https://user-images.githubusercontent.com/76864633/230167226-347b8d09-bd66-42ee-bb05-940ddae8f627.png)

 
 A difference between MySQL & Mongo is that, to create a database, **you don't need to type:**
 
 CREATE DATABASE "Name of database"
 
 You just type: *USE "Name of database"*  Whether it's a created base or not.
 
 
 ![Screenshot 2023-04-05 at 2 11 39 PM](https://user-images.githubusercontent.com/76864633/230167746-4a15491c-dc05-466f-8347-b9f0647edae7.png)
 
 From their, I like to see what collections (or tables my database has) by typing: *Show Collections*


![Screenshot 2023-04-05 at 2 12 19 PM](https://user-images.githubusercontent.com/76864633/230167868-ce688d3e-5500-401b-ac36-7ec323132e0d.png)

 
 
Next, I like to what's inside my collections by typing: *db.propertyinfo.find()*

![Screenshot 2023-04-05 at 2 12 53 PM](https://user-images.githubusercontent.com/76864633/230167983-7e0da63e-5e68-4879-aa63-f0d613743129.png)


From the screenshot, you can tell theirs no data (or any documents) in my collection (table).

~~I learned that if I want to import data to MongoDB from a .CSV file *without* using the MongoDB GUI, I have to first, convert the .csv into JSON format (because this is how Mongo stores data).

~~I'm gonna open a new terminal, install csvjson with this command: 

~~*pip install csvkit*

~~Then I'm going to change the directory to where my .csv files are:

~~cd OneDrive\ -\ Eastern\ Connecticut\ State\ University/ECSU/Year4/Spring2023/CSC480/Project\ Steps/Part\ 2\ DataBase/MongoDB

~~and paste: *csvjson realtor.csv > realtor.json* 
to have my csv file converted to

I'm going to be using MongoDB's GUI *Compass* to import this data into my tables.
  
## 4/5/2023 10pm

Because I have gotten more comfortable with MySQL & MongoDB, I have noticed how tedious it is to have to go to MongoDb's website to get my connection string to access Mongosh from my terminal.

To attack this problem, I created a new alias on my terminal called 'mongo-connect' where the alias is representing my connection string.

these are the steps I did:

1. Opened my terminal
2. ExecuteD the following:
      *nano .zshrc (open's the .zshrc file in the nano text editor.)*
3. Typed the following:
      *alias mongo-connect='"CONNECTION_STRING"'*
4. SaveD and exitED the nano editor by pressing:
      *Ctrl+X, then Y, then Enter.*
5. Reloaded my .zshrc file by running the following command:
      *source .zshrc*
6. Tested the Alias by running the Alias name:
      *Mongo-connect*

**Now whenever I log into my terminal I can type in *MongoConnect* and It'll let me access my cluster**

## 4/5/2023 11:30pm
Since, I am new to Mongo's Document type of NoSQL queries, I'm having a hard time finding the equivalent queries that I would do using MySQL.

So far, the steps I know to do so far are:

login in using mongo-connect

show dbs

use housing

show collections

db.Propertyinfo.FindOne() --> I use this to see the fields in these documents

db.PropertyInfo.find({"Year Built": 1999}) --> this query gives me houses built in this year.

I believe my next steps to do would be to figure out a list of queries that are wildy used in the corporate world. For example, I know that doing the different types of JOIN's and understanding them is very important.

Onec I figure out this list, I will begin to play around with these queries in both my noSQL & SQL database to get more comfortable with them. 

Then I will establish a list of maybe 10 - 20 queries I will use to test the preformance of each database against one another.
