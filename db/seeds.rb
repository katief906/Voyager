# Continents
africa = Continent.create(name: "Africa", picture: "https://upload.wikimedia.org/wikipedia/commons/3/3f/Africa_in_the_world_%28red%29_%28W3%29.svg")
asia = Continent.create(name: "Asia", picture: "https://upload.wikimedia.org/wikipedia/commons/f/fd/Asia_in_the_world_%28red%29_%28W3%29.svg")
europe = Continent.create(name: "Europe", picture: "https://upload.wikimedia.org/wikipedia/commons/a/a0/Europe_in_the_world_%28red%29_%28W3%29.svg")
north_america = Continent.create(name: "North America", picture: "https://upload.wikimedia.org/wikipedia/commons/d/d8/North_America_in_the_world_%28red%29_%28W3%29.svg")
oceania = Continent.create(name: "Oceania", picture: "https://upload.wikimedia.org/wikipedia/commons/a/a1/Oceania_in_the_world_%28red%29_%28W3%29.svg")
south_america = Continent.create(name: "South America", picture: "https://upload.wikimedia.org/wikipedia/commons/2/28/South_America_in_the_world_%28red%29_%28W3%29.svg")

# Countries (shortlist)
morocco = Country.create(name: "Morocco", continent: africa)
south_africa = Country.create(name: "South Africa", continent: africa)
china = Country.create(name: "China", continent: asia)
japan = Country.create(name: "Japan", continent: asia)
france = Country.create(name: "France", continent: europe)
spain = Country.create(name: "Spain", continent: europe)
mexico = Country.create(name: "Mexico", continent: north_america)
costa_rica = Country.create(name: "Costa Rica", continent: north_america)
australia = Country.create(name: "Australia", continent: oceania)
new_zealand = Country.create(name: "New Zealand", continent: oceania)
argentina = Country.create(name: "Argentina", continent: south_america)
chile = Country.create(name: "Chile", continent: south_america)

# Cities
marrakesh = City.create(name: "Marrakesh", country: morocco)
fes = City.create(name: "Fes", country: morocco)
cape_town = City.create(name: "Cape Town", country: south_africa)
johannesburg = City.create(name: "Johannesburg", country: south_africa)
beijing = City.create(name: "Beijing", country: china)
shanghai = City.create(name: "Shanghai", country: china)
tokyo = City.create(name: "Tokyo", country: japan)
kyoto = City.create(name: "Kyoto", country: japan)
paris = City.create(name: "Paris", country: france, latitude: "48.864716", longitude: "2.349014")
lyon = City.create(name: "Lyon", country: france, latitude: "45.763420", longitude: "4.834277")
madrid = City.create(name: "Madrid", country: spain, latitude: "40.416775", longitude: "-3.703790")
barcelona = City.create(name: "Barcelona", country: spain, latitude: "41.390205", longitude: "2.154007")
mexico_city = City.create(name: "Mexico City", country: mexico)
oaxaca = City.create(name: "Oaxaca", country: mexico)
san_jose = City.create(name: "San José", country: costa_rica)
jaco = City.create(name: "Jaco", country: costa_rica)
melbourne = City.create(name: "Melbourne", country: australia)
sydney = City.create(name: "Sydney", country: australia)
auckland = City.create(name: "Auckland", country: new_zealand)
christchurch = City.create(name: "Christchurch", country: new_zealand)
buenos_aires = City.create(name: "Buenos Aires", country: argentina)
mendoza = City.create(name: "Mendoza", country: argentina)
santiago = City.create(name: "Santiago", country: chile)
valparaiso = City.create(name: "Valparaíso", country: chile)

# Itineraries
itinerary_1 = Itinerary.create(name: "Wildlife in Morocco and South Africa")
itinerary_2 = Itinerary.create(name: "Metropoli of China and Japan")
itinerary_3 = Itinerary.create(name: "Wine of France & Spain")
itinerary_4 = Itinerary.create(name: "Natural Wonders of Mexico and Costa Rica")
itinerary_5 = Itinerary.create(name: "Diving in Australia and New Zealand")
itinerary_6 = Itinerary.create(name: "Hiking in Argentina and Chile")

# Destinations
destination_1 = Destination.create(city: marrakesh, itinerary: itinerary_1)
destination_2 = Destination.create(city: fes, itinerary: itinerary_1)
destination_3 = Destination.create(city: cape_town, itinerary: itinerary_1)
destination_4 = Destination.create(city: johannesburg, itinerary: itinerary_1)
destination_5 = Destination.create(city: beijing, itinerary: itinerary_2)
destination_6 = Destination.create(city: shanghai, itinerary: itinerary_2)
destination_7 = Destination.create(city: tokyo, itinerary: itinerary_2)
destination_8 = Destination.create(city: kyoto, itinerary: itinerary_2)
destination_9 = Destination.create(city: paris, itinerary: itinerary_3)
destination_10 = Destination.create(city: lyon, itinerary: itinerary_3)
destination_11 = Destination.create(city: madrid, itinerary: itinerary_3)
destination_12 = Destination.create(city: barcelona, itinerary: itinerary_3)
destination_13 = Destination.create(city: mexico_city, itinerary: itinerary_4)
destination_14 = Destination.create(city: oaxaca, itinerary: itinerary_4)
destination_15 = Destination.create(city: san_jose, itinerary: itinerary_4)
destination_16 = Destination.create(city: jaco, itinerary: itinerary_4)
destination_17 = Destination.create(city: melbourne, itinerary: itinerary_5)
destination_18 = Destination.create(city: sydney, itinerary: itinerary_5)
destination_19 = Destination.create(city: auckland, itinerary: itinerary_5)
destination_20 = Destination.create(city: christchurch, itinerary: itinerary_5)
destination_21 = Destination.create(city: buenos_aires, itinerary: itinerary_6)
destination_22 = Destination.create(city: mendoza, itinerary: itinerary_6)
destination_23 = Destination.create(city: santiago, itinerary: itinerary_6)
destination_24 = Destination.create(city: valparaiso, itinerary: itinerary_6)

# Stops
eiffel = Stop.create(name: "Eiffel Tower", address: "Champ de Mars, 5 Av. Anatole France", zip: "75007", city: paris)
hotel_regina_louvre = Stop.create(name: "Hotel Regina Louvre", address: "2 Pl. des Pyramides", zip: "75001", city: paris)
la_sagrada_familia = Stop.create(name: "La Sagrada Familia", address: "C/ de Mallorca, 401", zip: "08013", city: barcelona)
renaissance_barcelona_hotel = Stop.create(name: "Renaissance Barcelona Hotel", address: "C/ de Pau Claris, 122", zip: "08009", city: barcelona)

# Events
event_1 = Event.create(stop: eiffel, itinerary: itinerary_3)

# ALL COUNTRIES
# Africa
# algeria = Country.create(name: "Algeria", continent: africa)
# angola = Country.create(name: "Angola", continent: africa)
# benin = Country.create(name: "Benin", continent: africa)
# botswana = Country.create(name: "Botswana", continent: africa)
# burkina_faso = Country.create(name: "Burkina Faso", continent: africa)
# burundi = Country.create(name: "Burundi", continent: africa)
# cameroon = Country.create(name: "Cameroon", continent: africa)
# cape_verde = Country.create(name: "Cape Verde", continent: africa)
# central_african_republic = Country.create(name: "Central African Republic", continent: africa)
# chad = Country.create(name: "Chad", continent: africa)
# comoros = Country.create(name: "Comoros", continent: africa)
# congo = Country.create(name: "Congo", continent: africa)
# cote_d_ivoire = Country.create(name: "Côte d'Ivoire", continent: africa)
# democratic_republic_of_the_congo = Country.create(name: "Democratic Republic of the Congo", continent: africa)
# djibouti = Country.create(name: "Djibouti", continent: africa)
# egypt = Country.create(name: "egypt", continent: africa)
# equatorial_guinea = Country.create(name: "Equatorial Guinea", continent: africa)
# eritrea = Country.create(name: "Eritrea", continent: africa)
# eswatini = Country.create(name: "Eswatini", continent: africa)
# ethiopia = Country.create(name: "Ethiopia", continent: africa)
# gabon = Country.create(name: "Gabon", continent: africa)
# gambia = Country.create(name: "Gambia", continent: africa)
# ghana = Country.create(name: "Ghana", continent: africa)
# guinea = Country.create(name: "Guinea", continent: africa)
# guinea_bissau = Country.create(name: "Guinea-Bissau", continent: africa)
# kenya = Country.create(name: "Kenya", continent: africa)
# lesotho = Country.create(name: "Lesotho", continent: africa)
# liberia = Country.create(name: "Liberia", continent: africa)
# libya = Country.create(name: "Libya", continent: africa)
# madagascar = Country.create(name: "Madagascar", continent: africa)
# malawi = Country.create(name: "Malawi", continent: africa)
# mali = Country.create(name: "Mali", continent: africa)
# mauritania = Country.create(name: "Mauritania", continent: africa)
# mauritius = Country.create(name: "Mauritius", continent: africa)
# morocco = Country.create(name: "Morocco", continent: africa)
# mozambique = Country.create(name: "Mozambique", continent: africa)
# namibia = Country.create(name: "Namibia", continent: africa)
# niger = Country.create(name: "Niger", continent: africa)
# nigeria = Country.create(name: "Nigeria", continent: africa)
# rwanda = Country.create(name: "Rwanda", continent: africa)
# sao_tome_and_principe = Country.create(name: "Sao Tome and Principe", continent: africa)
# senegal = Country.create(name: "Senegal", continent: africa)
# seychelles = Country.create(name: "Seychelles", continent: africa)
# sierra_leone = Country.create(name: "Sierra Leone", continent: africa)
# somalia = Country.create(name: "Somalia", continent: africa)
# south_africa = Country.create(name: "South Africa", continent: africa)
# south_sudan = Country.create(name: "South Sudan", continent: africa)
# sudan = Country.create(name: "Sudan", continent: africa)
# tanzania = Country.create(name: "Tanzania", continent: africa)
# togo = Country.create(name: "Togo", continent: africa)
# tunisia = Country.create(name: "Tunisia", continent: africa)
# uganda = Country.create(name: "Uganda", continent: africa)
# zambia = Country.create(name: "Zambia", continent: africa)
# zimbabwe = Country.create(name: "Zimbabwe", continent: africa)


# Asia
# afghanistan = Country.create(name: "Afghanistan", code: "AF" continent: asia)
# armenia = Country.create(name: "Armenia", continent: asia)
# azerbaijan = Country.create(name: "Azerbaijan", continent: asia)
# bahrain = Country.create(name: "Bahrain", continent: asia)
# bangladesh = Country.create(name: "Bangladesh", continent: asia)
# bhutan = Country.create(name: "Bhutan", continent: asia)
# brunei = Country.create(name: "Brunei", continent: asia)
# cambodia = Country.create(name: "Cambodia", continent: asia)
# china = Country.create(name: "China", continent: asia)
# georgia = Country.create(name: "Georgia", continent: asia)
# hong_kong = Country.create(name: "Hong Kong", continent: asia)
# india = Country.create(name: "India", continent: asia)
# indonesia = Country.create(name: "Indonesia", continent: asia)
# iran = Country.create(name: "Iran", continent: asia)
# iraq = Country.create(name: "Iraq", continent: asia)
# israel = Country.create(name: "Israel", continent: asia)
# japan = Country.create(name: "Japan", continent: asia)
# jordan = Country.create(name: "Jordan", continent: asia)
# kazakhstan = Country.create(name: "Kazakhstan", continent: asia)
# kuwait = Country.create(name: "Kuwait", continent: asia)
# kyrgyzstan = Country.create(name: "Kyrgyzstan", continent: asia)
# laos = Country.create(name: "Laos", continent: asia)
# lebanon = Country.create(name: "Lebanon", continent: asia)
# macau = Country.create(name: "Macau", continent: asia)
# malaysia = Country.create(name: "Malaysia", continent: asia)
# maldives = Country.create(name: "Maldives", continent: asia)
# mongolia = Country.create(name: "Mongolia", continent: asia)
# myanmar = Country.create(name: "Myanmar", continent: asia)
# nepal = Country.create(name: "Nepal", continent: asia)
# north_korea = Country.create(name: "North Korea", continent: asia)
# oman = Country.create(name: "Oman", continent: asia)
# pakistan = Country.create(name: "Pakistan", continent: asia)
# palestine = Country.create(name: "Palestine", continent: asia)
# philippines = Country.create(name: "Philippines", continent: asia)
# qatar = Country.create(name: "Qatar", continent: asia)
# saudi_arabia = Country.create(name: "Saudi Arabia", continent: asia)
# singapore = Country.create(name: "Singapore", continent: asia)
# south_korea = Country.create(name: "South Korea", continent: asia)
# sri_lanka = Country.create(name: "Sri Lanka", continent: asia)
# syria = Country.create(name: "Syria", continent: asia)
# taiwan = Country.create(name: "Taiwan", continent: asia)
# tajikistan = Country.create(name: "Tajikistan", continent: asia)
# thailand = Country.create(name: "Thailand", continent: asia)
# timor_leste = Country.create(name: "Timor-Leste", continent: asia)
# turkmenistan = Country.create(name: "Turkmenistan", continent: asia)
# united_arab_emirates = Country.create(name: "United Arab Emirates", continent: asia)
# uzbekistan = Country.create(name: "Uzbekistan", continent: asia)
# vietnam = Country.create(name: "Vietnam", continent: asia)
# yemen = Country.create(name: "Yemen", continent: asia)

# # Europe
# albania = Country.create(name: "Albania", code: "AL", continent: europe)
# andorra = Country.create(name: "Andorra", code: "AD", continent: europe)
# austria = Country.create(name: "Austria", code: "AT", continent: europe)
# belarus = Country.create(name: "Belarus", code: "BY", continent: europe)
# belgium = Country.create(name: "Belgium", code: "", continent: europe)
# bosnia_and_herzegovina = Country.create(name: "Bosnia and Herzegovina", code: "", continent: europe)
# bulgaria = Country.create(name: "Bulgaria", code: "", continent: europe)
# croatia = Country.create(name: "Croatia", code: "", continent: europe)
# cyprus = Country.create(name: "Cyprus", code: "", continent: europe)
# czech_republic = Country.create(name: "Czech Republic", code: "", continent: europe)
# denmark = Country.create(name: "Denmark", code: "", continent: europe)
# estonia = Country.create(name: "Estonia", code: "", continent: europe)
# finland = Country.create(name: "Finland", code: "", continent: europe)
# france = Country.create(name: "France", code: "", continent: europe)
# germany = Country.create(name: "Germany", code: "", continent: europe)
# greece = Country.create(name: "Greece", code: "", continent: europe)
# hungary = Country.create(name: "Hungary", code: "", continent: europe)
# iceland = Country.create(name: "Iceland", code: "", continent: europe)
# ireland = Country.create(name: "Ireland", code: "", continent: europe)
# italy = Country.create(name: "Italy", code: "", continent: europe)
# latvia = Country.create(name: "Latvia", code: "", continent: europe)
# liechtenstein = Country.create(name: "Liechtenstein", code: "", continent: europe)
# lithuania = Country.create(name: "Lithuania", code: "", continent: europe)
# luxembourg = Country.create(name: "Luxembourg", code: "", continent: europe)
# malta = Country.create(name: "Malta", code: "", continent: europe)
# moldova = Country.create(name: "Moldova", code: "", continent: europe)
# monaco = Country.create(name: "Monaco", code: "", continent: europe)
# montenegro = Country.create(name: "Montenegro", code: "", continent: europe)
# netherlands = Country.create(name: "Netherlands", code: "", continent: europe)
# north_macedonia = Country.create(name: "North Macedonia", code: "", continent: europe)
# norway = Country.create(name: "Norway", code: "", continent: europe)
# poland = Country.create(name: "Poland", code: "", continent: europe)
# portugal = Country.create(name: "Portugal", code: "", continent: europe)
# romania = Country.create(name: "Romania", code: "", continent: europe)
# russia = Country.create(name: "Russia", code: "", continent: europe)
# san_marino = Country.create(name: "San Marino", code: "", continent: europe)
# serbia = Country.create(name: "Serbia", code: "", continent: europe)
# slovakia = Country.create(name: "Slovakia", code: "", continent: europe)
# slovenia = Country.create(name: "Slovenia", code: "", continent: europe)
# spain = Country.create(name: "Spain", code: "", continent: europe)
# sweden = Country.create(name: "Sweden", code: "", continent: europe)
# switzerland = Country.create(name: "Switzerland", code: "", continent: europe)
# turkey = Country.create(name: "Turkey", code: "", continent: europe)
# ukraine = Country.create(name: "Ukraine", code: "", continent: europe)
# united_kingdom = Country.create(name: "United Kingdom", code: "", continent: europe)
# vatican_city = Country.create(name: "Vatican City", code: "", continent: europe)

# # North America
# antigua_and_barbuda = Country.create(name: "Antigua and Barbuda", continent: north_america)
# bahamas = Country.create(name: "Bahamas", continent: north_america)
# barbados = Country.create(name: "Barbados", continent: north_america)
# belize = Country.create(name: "Belize", continent: north_america)
# canada = Country.create(name: "Canada", continent: north_america)
# costa_rica = Country.create(name: "Costa Rica", continent: north_america)
# cuba = Country.create(name: "Cuba", continent: north_america)
# dominica = Country.create(name: "Dominica", continent: north_america)
# dominican_republic = Country.create(name: "Dominican Republic", continent: north_america)
# el_salvador = Country.create(name: "El Salvador", continent: north_america)
# grenada = Country.create(name: "Grenada", continent: north_america)
# guatemala = Country.create(name: "guatemala", continent: north_america)
# haiti = Country.create(name: "Haiti", continent: north_america)
# honduras = Country.create(name: "Honduras", continent: north_america)
# jamaica = Country.create(name: "Jamaica", continent: north_america)
# mexico = Country.create(name: "Mexico", continent: north_america)
# nicaragua = Country.create(name: "Nicaragua", continent: north_america)
# panama = Country.create(name: "Panama", continent: north_america)
# saint_kitts_and_nevis = Country.create(name: "Saint Kitts and Nevis", continent: north_america)
# saint_lucia = Country.create(name: "Saint Lucia", continent: north_america)
# saint_vincent_and_the_grenadines = Country.create(name: "Saint Vincent and the Grenadines", continent: north_america)
# trinidad_and_tobago = Country.create(name: "Trinidad and Tobago", continent: north_america)
# united_states_of_america = Country.create(name: "United States of America", continent: north_america)


# # Oceania
# australia = Country.create(name: "Australia", continent: oceania)
# fiji = Country.create(name: "Fiji", continent: oceania)
# kiribati = Country.create(name: "Kiribati", continent: oceania)
# marshall_islands = Country.create(name: "Marshall Islands", continent: oceania)
# micronesia = Country.create(name: "Micronesia", continent: oceania)
# nauru = Country.create(name: "Nauru", continent: oceania)
# new_zealand = Country.create(name: "New Zealand", continent: oceania)
# palau = Country.create(name: "Palau", continent: oceania)
# papua_new_guinea = Country.create(name: "Papua New Guinea", continent: oceania)
# samoa = Country.create(name: "Samoa", continent: oceania)
# solomon_islands = Country.create(name: "Solomon Islands", continent: oceania)
# tonga = Country.create(name: "Tonga", continent: oceania)
# tuvalu = Country.create(name: "Tuvalu", continent: oceania)
# vanuatu = Country.create(name: "Vanuatu", continent: oceania)


# # South America
# argentina = Country.create(name: "Argentina", continent: south_america)
# bolivia = Country.create(name: "Bolivia", continent: south_america)
# brazil = Country.create(name: "Brazil", continent: south_america)
# chile = Country.create(name: "Chile", continent: south_america)
# columbia = Country.create(name: "Columbia", continent: south_america)
# ecuador = Country.create(name: "Ecuador", continent: south_america)
# guyana = Country.create(name: "Guyana", continent: south_america)
# paraguay = Country.create(name: "Paraguay", continent: south_america)
# peru = Country.create(name: "peru", continent: south_america)
# suriname = Country.create(name: "Suriname", continent: south_america)
# uruguay = Country.create(name: "Uruguay", continent: south_america)
# venezuela = Country.create(name: "Venezuela", continent: south_america)

# Country.create(name: "Afghanistan", code: "AF")
# Country.create(name: "Åland Islands", code: "AX")
# Country.create(name: "Albania", code: "AL")
# Country.create(name: "Algeria", code: "DZ")
# Country.create(name: "American Samoa", code: "AS")
# Country.create(name: "Andorra", code: "AD")
# Country.create(name: "Angola", code: "AO")
# Country.create(name: "Anguilla", code: "AI")
# Country.create(name: "Antarctica", code: "AQ")
# Country.create(name: "Antigua and Barbuda", code: "AG")
# Country.create(name: "Argentina", code: "AR")
# Country.create(name: "Armenia", code: "AM")
# Country.create(name: "Aruba", code: "AW")
# Country.create(name: "Australia", code: "AU")
# Country.create(name: "Austria", code: "AT")
# Country.create(name: "Azerbaijan", code: "AZ")
# Country.create(name: "Bahamas", code: "BS")
# Country.create(name: "Bahrain", code: "BH")
# Country.create(name: "Bangladesh", code: "BD")
# Country.create(name: "Barbados", code: "BB")
# Country.create(name: "Belarus", code: "BY")
# Country.create(name: "Belgium", code: "BE")
# Country.create(name: "Belize", code: "BZ")
# Country.create(name: "Benin", code: "BJ")
# Country.create(name: "Bermuda", code: "BM")
# Country.create(name: "Bhutan", code: "BT")
# Country.create(name: "Bolivia", code: "BO")
# Country.create(name: "Bonaire, Saint Eustatius, and Saba", code: "BQ")
# Country.create(name: "Bosnia and Herzegovina", code: "BA")
# Country.create(name: "Botswana", code: "BW")
# Country.create(name: "Bouvet Island", code: "BV")
# Country.create(name: "Brazil", code: "Brazil")
# Country.create(name: "British Indian Ocean Territory", code: "IO")
# Country.create(name: "British Virgin Islands", code: "VG")
# Country.create(name: "Brunei", code: "BN")
# Country.create(name: "Bulgaria", code: "BG")
# Country.create(name: "Burkina Faso", code: "BF")
# Country.create(name: "Burundi", code: "BI")
# Country.create(name: "Cambodia", code: "KH")
# Country.create(name: "Cameroon", code: "CM")
# Country.create(name: "Canada", code: "CA")
# Country.create(name: "Cayman Islands", code: "KY")
# Country.create(name: "Central African Republic", code: "CF")
# Country.create(name: "Chad", code: "TD")
# Country.create(name: "Chile", code: "CL")
# Country.create(name: "China", code: "CN")
# Country.create(name: "Christmas Island", code: "CX")
# Country.create(name: "Cocos [Keeling] Islands", code: "CC")
# Country.create(name: "Colombia", code: "CO")
# Country.create(name: "Comoros", code: "KM")
# Country.create(name: "Cook Islands", code: "CK")
# Country.create(name: "Costa Rica", code: "CR")

# "HR"	"Croatia"
# "CU"	"Cuba"
# "CW"	"Curaçao"
# "CY"	"Cyprus"
# "CZ"	"Czech Republic"
# "DK"	"Denmark"
# "DJ"	"Djibouti"
# "DM"	"Dominica"
# "DO"	"Dominican Republic"
# "CD"	"DR Congo"
# "EC"	"Ecuador"
# "EG"	"Egypt"
# "SV"	"El Salvador"
# "GQ"	"Equatorial Guinea"
# "ER"	"Eritrea"
# "EE"	"Estonia"
# "SZ"	"Eswatini"
# "ET"	"Ethiopia"
# "FK"	"Falkland Islands"
# "FO"	"Faroe Islands"
# "FJ"	"Fiji"
# "FI"	"Finland"
# "FR"	"France"
# "GF"	"French Guiana"
# "PF"	"French Polynesia"
# "TF"	"French Southern Territories"
# "GA"	"Gabon"
# "GE"	"Georgia"
# "DE"	"Germany"
# "GH"	"Ghana"
# "GI"	"Gibraltar"
# "GR"	"Greece"
# "GL"	"Greenland"
# "GD"	"Grenada"
# "GP"	"Guadeloupe"
# "GU"	"Guam"
# "GT"	"Guatemala"
# "GG"	"Guernsey"
# "GW"	"Guinea-Bissau"
# "GN"	"Guinea"
# "GY"	"Guyana"
# "HT"	"Haiti"
# "JO"	"Hashemite Kingdom of Jordan"
# "HM"	"Heard Island and McDonald Islands"
# "HN"	"Honduras"
# "HK"	"Hong Kong S.A.R"
# "HU"	"Hungary"
# "IS"	"Iceland"
# "IN"	"India"
# "ID"	"Indonesia"
# "IR"	"Iran"
# "IQ"	"Iraq"
# "IE"	"Ireland"
# "IM"	"Isle of Man"
# "IL"	"Israel"
# "IT"	"Italy"
# "CI"	"Ivory Coast"
# "JM"	"Jamaica"
# "JP"	"Japan"
# "JE"	"Jersey"
# "KZ"	"Kazakhstan"
# "KE"	"Kenya"
# "KI"	"Kiribati"
# "KW"	"Kuwait"
# "KG"	"Kyrgyzstan"
# "LA"	"Laos"
# "LV"	"Latvia"
# "LB"	"Lebanon"
# "LS"	"Lesotho"
# "LR"	"Liberia"
# "LY"	"Libya"
# "LI"	"Liechtenstein"
# "LU"	"Luxembourg"
# "MO"	"Macao S.A.R"
# "MG"	"Madagascar"
# "MW"	"Malawi"
# "MY"	"Malaysia"
# "MV"	"Maldives"
# "ML"	"Mali"
# "MT"	"Malta"
# "MH"	"Marshall Islands"
# "MQ"	"Martinique"
# "MR"	"Mauritania"
# "MU"	"Mauritius"
# "YT"	"Mayotte"
# "MX"	"Mexico"
# "FM"	"Micronesia"
# "MC"	"Monaco"
# "MN"	"Mongolia"
# "ME"	"Montenegro"
# "MS"	"Montserrat"
# "MA"	"Morocco"
# "MZ"	"Mozambique"
# "MM"	"Myanmar"
# "NA"	"Namibia"
# "NP"	"Nepal"
# "AN"	"Netherlands Antilles"
# "NL"	"Netherlands"
# "NC"	"New Caledonia"
# "NZ"	"New Zealand"
# "NI"	"Nicaragua"
# "NE"	"Niger"
# "NG"	"Nigeria"
# "NU"	"Niue"
# "NF"	"Norfolk Island"
# "KP"	"North Korea"
# "MK"	"North Macedonia"
# "MP"	"Northern Mariana Islands"
# "NO"	"Norway"
# "OM"	"Oman"
# "PK"	"Pakistan"
# "PW"	"Palau"
# "PS"	"Palestine"
# "PA"	"Panama"
# "PG"	"Papua New Guinea"
# "PY"	"Paraguay"
# "PE"	"Peru"
# "PH"	"Philippines"
# "PN"	"Pitcairn Islands"
# "PL"	"Poland"
# "PT"	"Portugal"
# "PR"	"Puerto Rico"
# "QA"	"Qatar"
# "CV"	"Republic of Cabo Verde"
# "KR"	"Republic of Korea"
# "XK"	"Republic of Kosovo"
# "LT"	"Republic of Lithuania"
# "MD"	"Republic of Moldova"
# "NR"	"Republic of Nauru"
# "ZA"	"Republic of South Africa"
# "SS"	"Republic of South Sudan"
# "CG"	"Republic of the Congo"
# "RE"	"Réunion"
# "RO"	"Romania"
# "RU"	"Russia"
# "RW"	"Rwanda"
# "BL"	"Saint Barthélemy"
# "SH"	"Saint Helena"
# "LC"	"Saint Lucia"
# "MF"	"Saint Martin"
# "PM"	"Saint Pierre and Miquelon"
# "WS"	"Samoa"
# "SM"	"San Marino"
# "ST"	"São Tomé and Príncipe"
# "SA"	"Saudi Arabia"
# "SN"	"Senegal"
# "CS"	"Serbia and Montenegro"
# "RS"	"Serbia"
# "SC"	"Seychelles"
# "SL"	"Sierra Leone"
# "SG"	"Singapore"
# "SX"	"Sint Maarten"
# "SK"	"Slovakia"
# "SI"	"Slovenia"
# "SB"	"Solomon Islands"
# "SO"	"Somalia"
# "GS"	"South Georgia and the South Sandwich Islands"
# "ES"	"Spain"
# "LK"	"Sri Lanka"
# "KN"	"St Kitts and Nevis"
# "VC"	"St Vincent and Grenadines"
# "SD"	"Sudan"
# "SR"	"Suriname"
# "SJ"	"Svalbard and Jan Mayen"
# "SE"	"Sweden"
# "CH"	"Switzerland"
# "SY"	"Syria"
# "TW"	"Taiwan ROC"
# "TJ"	"Tajikistan"
# "TZ"	"Tanzania"
# "TH"	"Thailand"
# "GM"	"The Gambia"
# "TL"	"Timor-Leste"
# "TG"	"Togo"
# "TK"	"Tokelau"
# "TO"	"Tonga"
# "TT"	"Trinidad and Tobago"
# "TN"	"Tunisia"
# "TR"	"Turkey"
# "TM"	"Turkmenistan"
# "TC"	"Turks and Caicos Islands"
# "TV"	"Tuvalu"
# "UM"	"U.S. Minor Outlying Islands"
# "VI"	"U.S. Virgin Islands"
# "UG"	"Uganda"
# "UA"	"Ukraine"
# "AE"	"United Arab Emirates"
# "GB"	"United Kingdom"
# "US"	"United States of America"
# "UY"	"Uruguay"
# "UZ"	"Uzbekistan"
# "VU"	"Vanuatu"
# "VA"	"Vatican City"
# "VE"	"Venezuela"
# "VN"	"Vietnam"
# "WF"	"Wallis and Futuna"
# "EH"	"Western Sahara"
# "YE"	"Yemen"
# "ZM"	"Zambia"
# "ZW"	"Zimbabwe"