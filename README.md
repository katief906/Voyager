# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* Voyager

Voyager is an app designed to help users research and plan itineraries to places all over the world. The app leverages city data from the Countries Cities API as well as hotel/restaurant/points of interest data from the Yelp Fusion API to make it as easy as possible for users to plan a fulfilling trip. The site includes pages dedicated to each continent, country, and city, as well as to a list of itineraries, individual itineraries and stops.

voyager.onrender.com 

* Programming
-	Backend: Ruby 2.7.3, Rails 5.2.5
-	Frontend: React
-	Database: PostgreSQL
-	Third-Party APIs: Countries Cities API (documentation: https://rapidapi.com/natkapral/api/countries-cities/), Yelp Fusion API (documentation: https://www.yelp.com/developers/documentation/v3/get_started) 

* Development
-	Prerequisite: have Yarn and Ruby version 2.7.3 installed
-	Clone the repository (git clone https://github.com/katief906/Voyager.git)
-	Install Ruby gems (bundle exec bundle install)
-	Install packages with Yarn (yarn install)
-	Start Ruby server (bundle exec rails server)
-	Start webpack-dev-server (yarn run start)
-	Open the development site at localhost:3000

* Seeding Data
The app should have all continents and countries seeded prior to additional development. Please reference the seeds.rb file to find this data.

* A note about Cities data
Data for Cities is pulled from the Countries Cities API. This API limits the number of results returned, so I opted to search for cities over 100K residents. For this reason, some City Show Pages will say that a Country has "No cities found." In the future, I plan to fetch Cities based on the Country's overall population to ensure that each Country has Cities returned.

* A note about Stops data
Data for Stops (ex: hotels, restaurants, activities) is pulled from the Yelp-Fusion API. Currently, Yelp only has data for 38 countries. To test out this app with the most success, please consider creating Itineraries that travel to the following countries:

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

* Future features:
-	Pulling in images of each City on the City Show Page and for the Itinerary Show Page from the Unsplash API using the Unsplash SDK
-	Creating User Profile Pages where the User can see their Itineraries
-	Creating a 
-	Pulling in flight and airport data from the Amadeus API to help Users research and plan out their travel to and from each City on their Itinerary
-	Drag and drop for Stop Tiles on an Itinerary Show Page
-	Assigning particular dates/days of the trip to each City and displaying Stops based on what the User has added to each day of the trip
-	Drag and drop for Stop Tiles on an Itinerary Show Page
-	Pulling in weather data for each City and each day the User plans to be in that City, to help the User decide which Stops would be better suited for each day
-	Pulling in travel recommendations based on the Cities currently included in the Itinerary from the Amadeus API

* Connect with the Developer

- LinkedIn: https://www.linkedin.com/kathleencfoley
- Email: katief906@gmail.com
- GitHub: https://github.com/katief906
