# Data-Visualization-R

I conducted this exploratory data analysis and visualization to the merged datasets to provide useful insights to the production companies: to choose where they should invest their money, filmmakers: to have an overview and good understanding of the industry they’re working in, and viewing audiences in general: to recommend which movies they should watch.

There are four primary problems that are imposed that we’re trying to solve, which are:
1) How can the release month affect the revenue generated ?
  And which month is the most revenue generating for each respective genre ? |
  Interaction: Most revenue generating month for each respective genre.
  Plot : Raster Plot, Why this plot : Because it is a simple method to visually examine 
  the trial by trial variability of the responses.
2) Which directors that make motion pictures produce the most revenue? Or in other
  words which directors that the audiences love to go and see their movies? |
  Interaction : Top 5 movies that generated revenue for each respective filmmaker.
  Plot : Pie Chart , Why this plot : Because pieces of the graph are proportional to the
  fraction of the whole category.
3) Does the duration time or runtime of the film vary through the years? Do the
  runtimes of the movies get shorter? Does it get longer? | Interaction: sum of
  revenue of movies throughout the years with respect to the runtime.
  Plot : Scatter Plot, Why this plot : Because it’s a mathematical diagram that uses
  cartesian coordinates to display values of two variables for a set of data.
4) Which genres are the most popular in each respective country? | Interaction : sum
  of the revenue.
  Plot : Bar Plot , Why this plot : Because it presents categorical data with rectangular
  bars with heights or lengths proportional to the value that they represent.
  
  
  Description Of The Data :
It is the result of merging two datasets together for better insights. The first one contained
an EDA or storytelling through its data along with a content-based recommendation system
and a wide range of different graphs and visuals on the fast growing popular app; Netflix.
The second one contained observations of 10k+ movies, like: title, budget, revenue,
country, cast, director, tagline, keywords, genres, release date, date added, rating and
runtime. Which provides us with info about the highest profits and best and most
convenient investment opportunities, and other interesting stuff about the film industry.

Preprocessing and merging of the datasets was done in Python (DataVizProj_Preprocessing.ipynb)
Data Visualization was done in R (vis1.R)

Link for 1st dataset:
https://www.kaggle.com/niharika41298/netflix-visualizations-recommendation-eda/notebook#Top-Duration
Link for 2nd dataset:
https://www.kaggle.com/juzershakir/tmdb-movies-dataset
