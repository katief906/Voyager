# Voyager

Voyager is an app designed to help users research and plan itineraries to places all over the world. The app leverages city and country data from the Countries Cities API as well as accommodation, restaurant, and points of interest data from the Yelp Fusion API to make it as easy as possible for users to plan a fulfilling trip. The site includes pages dedicated to each continent, country, and city, as well as to all itineraries and detailed individual itineraries.

<a href="voyager.onrender.com" target="_blank">voyager.onrender.com</a>

# Programming

- Backend: Ruby 2.7.3, Rails 5.2.5
- Frontend: React
- Database: PostgreSQL

Third-Party APIs: 
- <a href="https://rapidapi.com/natkapral/api/countries-cities/" target="_blank">Countries Cities API</a>
- <a href="https://www.yelp.com/developers/documentation/v3/get_started" target="_blank">Yelp Fusion API</a>

# Development

-	Prerequisite: have Yarn and Ruby version 2.7.3 installed
-	Clone the repository (git clone https://github.com/katief906/Voyager.git)
-	Install Ruby gems (bundle exec bundle install)
-	Install packages with Yarn (yarn install)
-	Start Ruby server (bundle exec rails server)
-	Start webpack-dev-server (yarn run start)
-	Open the development site at localhost:3000

# Seeding Data

The app should have all continents and countries seeded prior to additional development. Please reference the seeds.rb file to find this data.

# A Note about Cities Data

City data is pulled from the Countries Cities API. This API limits the number of results returned, so I opted to search for cities over 100,000 residents. For this reason, some Country Show Pages will display "no cities found". In the future, I plan to fetch cities based on a country's overall population to ensure that each country has cities returned.

# A Note about Stops Data

Stop data (ex: hotels, restaurants, activities) is pulled from the Yelp-Fusion API. Currently, Yelp only has data for 38 countries. 

To test out this app with the most success, please consider creating itineraries that travel to the following countries:
-	Argentina
-	Australia
-	Austria
-	Belgium
-	Brazil
-	Canada
-	Chile
-	Czech Republic
-	Denmark
-	Finland
-	France
-	Germany
-	Hong Kong
-	Ireland
-	Italy
-	Japan
-	Malaysia
-	Mexico
-	New Zealand
-	Norway
-	Philippines
-	Poland
-	Portugal
-	Singapore
-	Spain
-	Sweden
-	Switzerland
-	Taiwan
-	The Netherlands
-	Turkey
-	United Kingdom
-	United States

# Future Features:

-	Pulling in images of each city on City Show Pages and Itinerary Show Pages from the Unsplash API via the Unsplash SDK
-	Creating User Profile Pages where a user can see their itineraries
-	Pulling in flight and airport data from the Amadeus API to help users research and plan out their travel to and from each city on their itinerary
-	Drag and drop for stop tiles on Itinerary Show Pages
-	Assigning particular dates/days of the trip to each city and displaying stops based on what the user has added to each day of the trip
-	Pulling in weather data for each city and each day the user plans to be in a particular city, to help the user decide which stops would be better suited for each day
-	Pulling in travel recommendations based on the cities currently included in an itinerary with data from the Amadeus API

# Connect with the Developer

- <a href="mailto: katief906@gmail.com">Email me</a>
- <a href="https://www.linkedin.com/kathleencfoley" target="_blank">LinkedIn</a>
- <a href="https://github.com/katief906" target="_blank">GitHub</a>