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

##3/06/2023

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

