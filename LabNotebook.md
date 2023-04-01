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


