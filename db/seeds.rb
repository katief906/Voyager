# Continents
africa = Continent.create(name: "Africa", picture: "https://upload.wikimedia.org/wikipedia/commons/3/3f/Africa_in_the_world_%28red%29_%28W3%29.svg")
asia = Continent.create(name: "Asia", picture: "https://upload.wikimedia.org/wikipedia/commons/f/fd/Asia_in_the_world_%28red%29_%28W3%29.svg")
europe = Continent.create(name: "Europe", picture: "https://upload.wikimedia.org/wikipedia/commons/a/a0/Europe_in_the_world_%28red%29_%28W3%29.svg")
north_america = Continent.create(name: "North America", picture: "https://upload.wikimedia.org/wikipedia/commons/d/d8/North_America_in_the_world_%28red%29_%28W3%29.svg")
oceania = Continent.create(name: "Oceania", picture: "https://upload.wikimedia.org/wikipedia/commons/a/a1/Oceania_in_the_world_%28red%29_%28W3%29.svg")
south_america = Continent.create(name: "South America", picture: "https://upload.wikimedia.org/wikipedia/commons/2/28/South_America_in_the_world_%28red%29_%28W3%29.svg")

# ALL COUNTRIES
# Africa
algeria = Country.create(name: "Algeria", country_code: "DZ", continent: africa)
angola = Country.create(name: "Angola", country_code: "AO", continent: africa)
benin = Country.create(name: "Benin", country_code: "BJ", continent: africa)
botswana = Country.create(name: "Botswana", country_code: "BW", continent: africa)
burkina_faso = Country.create(name: "Burkina Faso", country_code: "BF", continent: africa)
burundi = Country.create(name: "Burundi", country_code: "BI", continent: africa)
cameroon = Country.create(name: "Cameroon", country_code: "CM", continent: africa)
cape_verde = Country.create(name: "Cape Verde (Republic of Cabo Verde)", country_code: "CV", continent: africa)
central_african_republic = Country.create(name: "Central African Republic", country_code: "CF", continent: africa)
chad = Country.create(name: "Chad", country_code: "TD", continent: africa)
comoros = Country.create(name: "Comoros", country_code: "KM", continent: africa)
democratic_republic_of_the_congo = Country.create(name: "Democratic Republic of the Congo", country_code: "CD", continent: africa)
djibouti = Country.create(name: "Djibouti", country_code: "DJ", continent: africa)
egypt = Country.create(name: "Egypt", country_code: "EG", continent: africa)
equatorial_guinea = Country.create(name: "Equatorial Guinea", country_code: "GQ", continent: africa)
eritrea = Country.create(name: "Eritrea", country_code: "ER", continent: africa)
eswatini = Country.create(name: "Eswatini", country_code: "SZ", continent: africa)
ethiopia = Country.create(name: "Ethiopia", country_code: "ET", continent: africa)
gabon = Country.create(name: "Gabon", country_code: "GA", continent: africa)
ghana = Country.create(name: "Ghana", country_code: "GH", continent: africa)
guinea = Country.create(name: "Guinea", country_code: "GN", continent: africa)
guinea_bissau = Country.create(name: "Guinea-Bissau", country_code: "GW", continent: africa)
ivory_coast = Country.create(name: "Ivory Coast (Côte d'Ivoire)", country_code: "CI", continent: africa)
kenya = Country.create(name: "Kenya", country_code: "KE", continent: africa)
lesotho = Country.create(name: "Lesotho", country_code: "LS", continent: africa)
liberia = Country.create(name: "Liberia", country_code: "LR", continent: africa)
libya = Country.create(name: "Libya", country_code: "LY", continent: africa)
madagascar = Country.create(name: "Madagascar", country_code: "MG", continent: africa)
malawi = Country.create(name: "Malawi", country_code: "MW", continent: africa)
mali = Country.create(name: "Mali", country_code: "ML", continent: africa)
mauritania = Country.create(name: "Mauritania", country_code: "MR", continent: africa)
mauritius = Country.create(name: "Mauritius", country_code: "MU", continent: africa)
morocco = Country.create(name: "Morocco", country_code: "MA", continent: africa)
mozambique = Country.create(name: "Mozambique", country_code: "MZ", continent: africa)
namibia = Country.create(name: "Namibia", country_code: "NA", continent: africa)
niger = Country.create(name: "Niger", country_code: "NE", continent: africa)
nigeria = Country.create(name: "Nigeria", country_code: "NG", continent: africa)
republic_of_the_congo = Country.create(name: "Republic of the Congo", country_code: "CG", continent: africa)
rwanda = Country.create(name: "Rwanda", country_code: "RW", continent: africa)
sao_tome_and_principe = Country.create(name: "Sao Tome and Principe", country_code: "ST", continent: africa)
senegal = Country.create(name: "Senegal", country_code: "SN", continent: africa)
seychelles = Country.create(name: "Seychelles", country_code: "SC", continent: africa)
sierra_leone = Country.create(name: "Sierra Leone", country_code: "SL", continent: africa)
somalia = Country.create(name: "Somalia", country_code: "SO", continent: africa)
south_africa = Country.create(name: "South Africa (Republic of South Africa)", country_code: "ZA", continent: africa)
south_sudan = Country.create(name: "South Sudan (Republic of South Sudan)", country_code: "SS", continent: africa)
sudan = Country.create(name: "Sudan", country_code: "SD", continent: africa)
tanzania = Country.create(name: "Tanzania", country_code: "TZ", continent: africa)
the_gambia = Country.create(name: "The Gambia", country_code: "GM", continent: africa)
togo = Country.create(name: "Togo", country_code: "TG", continent: africa)
tunisia = Country.create(name: "Tunisia", country_code: "TN", continent: africa)
uganda = Country.create(name: "Uganda", country_code: "UG", continent: africa)
zambia = Country.create(name: "Zambia", country_code: "ZM", continent: africa)
zimbabwe = Country.create(name: "Zimbabwe", country_code: "ZW", continent: africa)


# Asia
afghanistan = Country.create(name: "Afghanistan", country_code: "AF", continent: asia)
armenia = Country.create(name: "Armenia", country_code: "AM", continent: asia)
azerbaijan = Country.create(name: "Azerbaijan", country_code: "AZ", continent: asia)
bahrain = Country.create(name: "Bahrain", country_code: "BH", continent: asia)
bangladesh = Country.create(name: "Bangladesh", country_code: "BD", continent: asia)
bhutan = Country.create(name: "Bhutan", country_code: "BT", continent: asia)
brunei = Country.create(name: "Brunei", country_code: "BN", continent: asia)
cambodia = Country.create(name: "Cambodia", country_code: "KH", continent: asia)
china = Country.create(name: "China", country_code: "CN", continent: asia)
georgia = Country.create(name: "Georgia", country_code: "GE", continent: asia)
hong_kong = Country.create(name: "Hong Kong S.A.R.", country_code: "HK", continent: asia)
india = Country.create(name: "India", country_code: "IN", continent: asia)
indonesia = Country.create(name: "Indonesia", country_code: "ID", continent: asia)
iran = Country.create(name: "Iran", country_code: "IR", continent: asia)
iraq = Country.create(name: "Iraq", country_code: "IQ", continent: asia)
israel = Country.create(name: "Israel", country_code: "IL", continent: asia)
japan = Country.create(name: "Japan", country_code: "JP", continent: asia)
jordan = Country.create(name: "Jordan (Hashemite Kingdom of Jordan)", country_code: "JO", continent: asia)
kazakhstan = Country.create(name: "Kazakhstan", country_code: "KZ", continent: asia)
kuwait = Country.create(name: "Kuwait", country_code: "KW", continent: asia)
kyrgyzstan = Country.create(name: "Kyrgyzstan", country_code: "KG", continent: asia)
laos = Country.create(name: "Laos", country_code: "LA", continent: asia)
lebanon = Country.create(name: "Lebanon", country_code: "LB", continent: asia)
macao = Country.create(name: "Macao S.A.R. (Macau)", country_code: "MO", continent: asia)
malaysia = Country.create(name: "Malaysia", country_code: "MY", continent: asia)
maldives = Country.create(name: "Maldives", country_code: "MV", continent: asia)
mongolia = Country.create(name: "Mongolia", country_code: "MN", continent: asia)
myanmar = Country.create(name: "Myanmar", country_code: "MM", continent: asia)
nepal = Country.create(name: "Nepal", country_code: "NP", continent: asia)
north_korea = Country.create(name: "North Korea", country_code: "KP", continent: asia)
oman = Country.create(name: "Oman", country_code: "OM", continent: asia)
pakistan = Country.create(name: "Pakistan", country_code: "PK", continent: asia)
palestine = Country.create(name: "Palestine", country_code: "PS", continent: asia)
philippines = Country.create(name: "Philippines", country_code: "PH", continent: asia)
qatar = Country.create(name: "Qatar", country_code: "QA", continent: asia)
saudi_arabia = Country.create(name: "Saudi Arabia", country_code: "SA", continent: asia)
singapore = Country.create(name: "Singapore", country_code: "SG", continent: asia)
south_korea = Country.create(name: "South Korea (Republic of Korea)", country_code: "KR", continent: asia)
sri_lanka = Country.create(name: "Sri Lanka", country_code: "LK", continent: asia)
syria = Country.create(name: "Syria", country_code: "SY", continent: asia)
taiwan = Country.create(name: "Taiwan (Taiwan ROC)", country_code: "TW", continent: asia)
tajikistan = Country.create(name: "Tajikistan", country_code: "TJ", continent: asia)
thailand = Country.create(name: "Thailand", country_code: "TH", continent: asia)
timor_leste = Country.create(name: "Timor-Leste", country_code: "TL", continent: asia)
turkmenistan = Country.create(name: "Turkmenistan", country_code: "TM", continent: asia)
united_arab_emirates = Country.create(name: "United Arab Emirates", country_code: "AE", continent: asia)
uzbekistan = Country.create(name: "Uzbekistan", country_code: "UZ", continent: asia)
vietnam = Country.create(name: "Vietnam", country_code: "VN", continent: asia)
yemen = Country.create(name: "Yemen", country_code: "YE", continent: asia)

# # Europe
albania = Country.create(name: "Albania", country_code: "AL", continent: europe)
andorra = Country.create(name: "Andorra", country_code: "AD", continent: europe)
austria = Country.create(name: "Austria", country_code: "AT", continent: europe)
belarus = Country.create(name: "Belarus", country_code: "BY", continent: europe)
belgium = Country.create(name: "Belgium", country_code: "BE", continent: europe)
bosnia_and_herzegovina = Country.create(name: "Bosnia and Herzegovina", country_code: "BA", continent: europe)
bulgaria = Country.create(name: "Bulgaria", country_code: "BG", continent: europe)
croatia = Country.create(name: "Croatia", country_code: "HR", continent: europe)
cyprus = Country.create(name: "Cyprus", country_code: "CY", continent: europe)
czech_republic = Country.create(name: "Czech Republic", country_code: "CZ", continent: europe)
denmark = Country.create(name: "Denmark", country_code: "DK", continent: europe)
estonia = Country.create(name: "Estonia", country_code: "EE", continent: europe)
finland = Country.create(name: "Finland", country_code: "FI", continent: europe)
france = Country.create(name: "France", country_code: "FR", continent: europe)
germany = Country.create(name: "Germany", country_code: "DE", continent: europe)
greece = Country.create(name: "Greece", country_code: "GR", continent: europe)
hungary = Country.create(name: "Hungary", country_code: "HU", continent: europe)
iceland = Country.create(name: "Iceland", country_code: "IS", continent: europe)
ireland = Country.create(name: "Ireland", country_code: "IE", continent: europe)
italy = Country.create(name: "Italy", country_code: "IT", continent: europe)
latvia = Country.create(name: "Latvia", country_code: "LV", continent: europe)
liechtenstein = Country.create(name: "Liechtenstein", country_code: "LI", continent: europe)
lithuania = Country.create(name: "Lithuania (Republic of Lithuania)", country_code: "LT", continent: europe)
luxembourg = Country.create(name: "Luxembourg", country_code: "LU", continent: europe)
malta = Country.create(name: "Malta", country_code: "MT", continent: europe)
moldova = Country.create(name: "Moldova (Republic of Moldova)", country_code: "MD", continent: europe)
monaco = Country.create(name: "Monaco", country_code: "MC", continent: europe)
montenegro = Country.create(name: "Montenegro", country_code: "ME", continent: europe)
netherlands = Country.create(name: "Netherlands", country_code: "NL", continent: europe)
north_macedonia = Country.create(name: "North Macedonia", country_code: "MK", continent: europe)
norway = Country.create(name: "Norway", country_code: "NO", continent: europe)
poland = Country.create(name: "Poland", country_code: "PL", continent: europe)
portugal = Country.create(name: "Portugal", country_code: "PT", continent: europe)
romania = Country.create(name: "Romania", country_code: "RO", continent: europe)
russia = Country.create(name: "Russia", country_code: "RU", continent: europe)
san_marino = Country.create(name: "San Marino", country_code: "SM", continent: europe)
serbia = Country.create(name: "Serbia", country_code: "RS", continent: europe)
slovakia = Country.create(name: "Slovakia", country_code: "SK", continent: europe)
slovenia = Country.create(name: "Slovenia", country_code: "SI", continent: europe)
spain = Country.create(name: "Spain", country_code: "ES", continent: europe)
sweden = Country.create(name: "Sweden", country_code: "SE", continent: europe)
switzerland = Country.create(name: "Switzerland", country_code: "CH", continent: europe)
turkey = Country.create(name: "Turkey", country_code: "TR", continent: europe)
ukraine = Country.create(name: "Ukraine", country_code: "UA", continent: europe)
united_kingdom = Country.create(name: "United Kingdom", country_code: "GB", continent: europe)
vatican_city = Country.create(name: "Vatican City", country_code: "VA", continent: europe)

# # North America
antigua_and_barbuda = Country.create(name: "Antigua and Barbuda", country_code: "AG", continent: north_america)
bahamas = Country.create(name: "Bahamas", country_code: "BS", continent: north_america)
barbados = Country.create(name: "Barbados", country_code: "BB", continent: north_america)
belize = Country.create(name: "Belize", country_code: "BZ", continent: north_america)
canada = Country.create(name: "Canada", country_code: "CA", continent: north_america)
costa_rica = Country.create(name: "Costa Rica", country_code: "CR", continent: north_america)
cuba = Country.create(name: "Cuba", country_code: "CU", continent: north_america)
dominica = Country.create(name: "Dominica", country_code: "DM", continent: north_america)
dominican_republic = Country.create(name: "Dominican Republic", country_code: "DO", continent: north_america)
el_salvador = Country.create(name: "El Salvador", country_code: "SV", continent: north_america)
grenada = Country.create(name: "Grenada", country_code: "GD", continent: north_america)
guatemala = Country.create(name: "Guatemala", country_code: "GT", continent: north_america)
haiti = Country.create(name: "Haiti", country_code: "HT", continent: north_america)
honduras = Country.create(name: "Honduras", country_code: "HN", continent: north_america)
jamaica = Country.create(name: "Jamaica", country_code: "JM", continent: north_america)
mexico = Country.create(name: "Mexico", country_code: "MX", continent: north_america)
nicaragua = Country.create(name: "Nicaragua", country_code: "NI", continent: north_america)
panama = Country.create(name: "Panama", country_code: "PA", continent: north_america)
saint_kitts_and_nevis = Country.create(name: "Saint Kitts and Nevis", country_code: "KN", continent: north_america)
saint_lucia = Country.create(name: "Saint Lucia", country_code: "LC", continent: north_america)
saint_vincent_and_the_grenadines = Country.create(name: "Saint Vincent and the Grenadines", country_code: "VC", continent: north_america)
trinidad_and_tobago = Country.create(name: "Trinidad and Tobago", country_code: "TT", continent: north_america)
united_states_of_america = Country.create(name: "United States of America", country_code: "US", continent: north_america)


# # Oceania
australia = Country.create(name: "Australia", country_code: "AU", continent: oceania)
fiji = Country.create(name: "Fiji", country_code: "FJ", continent: oceania)
kiribati = Country.create(name: "Kiribati", country_code: "KI", continent: oceania)
marshall_islands = Country.create(name: "Marshall Islands", country_code: "MH", continent: oceania)
micronesia = Country.create(name: "Micronesia", country_code: "FM", continent: oceania)
nauru = Country.create(name: "Nauru (Republic of Nauru)", country_code: "NR", continent: oceania)
new_zealand = Country.create(name: "New Zealand", country_code: "NZ", continent: oceania)
palau = Country.create(name: "Palau", country_code: "PW", continent: oceania)
papua_new_guinea = Country.create(name: "Papua New Guinea", country_code: "PG", continent: oceania)
samoa = Country.create(name: "Samoa", country_code: "WS", continent: oceania)
solomon_islands = Country.create(name: "Solomon Islands", country_code: "SB", continent: oceania)
tonga = Country.create(name: "Tonga", country_code: "TO", continent: oceania)
tuvalu = Country.create(name: "Tuvalu", country_code: "TV", continent: oceania)
vanuatu = Country.create(name: "Vanuatu", country_code: "VU", continent: oceania)


# # South America
argentina = Country.create(name: "Argentina", country_code: "AR", continent: south_america)
bolivia = Country.create(name: "Bolivia", country_code: "BO", continent: south_america)
brazil = Country.create(name: "Brazil", country_code: "BR", continent: south_america)
chile = Country.create(name: "Chile", country_code: "CL", continent: south_america)
columbia = Country.create(name: "Columbia", country_code: "CO", continent: south_america)
ecuador = Country.create(name: "Ecuador", country_code: "EC", continent: south_america)
guyana = Country.create(name: "Guyana", country_code: "GY", continent: south_america)
paraguay = Country.create(name: "Paraguay", country_code: "PY", continent: south_america)
peru = Country.create(name: "Peru", country_code: "PE", continent: south_america)
suriname = Country.create(name: "Suriname", country_code: "SR", continent: south_america)
uruguay = Country.create(name: "Uruguay", country_code: "UY", continent: south_america)
venezuela = Country.create(name: "Venezuela", country_code: "VE", continent: south_america)

# Cities
marrakesh = City.create(name: "Marrakesh", geonameid: 2542997, latitude: "31.63416" , longitude: "-7.99994", population: 839296, country: morocco)
fes = City.create(name: "Fes", geonameid: 2548885, latitude: "34.03313" , longitude: "-5.00028", population: 964891, country: morocco)
cape_town = City.create(name: "Cape Town", geonameid: 3369157, latitude: "-33.92584", longitude: "18.42322", population: 4710000, country: south_africa)
johannesburg = City.create(name: "Johannesburg", geonameid: 993800, latitude: "-26.20227", longitude: "28.04363", population: 5635127, country: south_africa)
beijing = City.create(name: "Beijing", geonameid: 1816670, latitude: "39.9075", longitude: "116.39723", population: 18960744, country: china)
shanghai = City.create(name: "Shanghai", geonameid: 1796236, latitude: "31.22222", longitude: "121.45806", population: 22315474, country: china)
tokyo = City.create(name: "Tokyo", geonameid: 1850147, latitude: "35.6895", longitude: "139.69171", population: 8336599, country: japan)
kyoto = City.create(name: "Kyoto", geonameid: 1857910, latitude: "35.02107", longitude: "135.75385", population: 1463723, country: japan)
paris = City.create(name: "Paris", geonameid: 2988507, latitude: "48.864716", longitude: "2.349014", population: 2138551, country: france)
lyon = City.create(name: "Lyon", geonameid: 2996944, latitude: "45.74846", longitude: "4.84671", population: 472317, country: france)
madrid = City.create(name: "Madrid", geonameid: 3117735, latitude: "40.4165", longitude: "-3.70256", population: 3255944, country: spain)
barcelona = City.create(name: "Barcelona", geonameid: 3128760, latitude: "41.38879", longitude: "2.15899", population: 1620343, country: spain)
mexico_city = City.create(name: "Mexico City", geonameid: 3530597, latitude: "19.42847", longitude: "-99.12766", population: 12294193, country: mexico)
oaxaca = City.create(name: "Oaxaca City", geonameid: 3522507, latitude: "17.06542", longitude: "-96.72365", population: 255029, country: mexico)
san_jose = City.create(name: "San José", geonameid: 3621849, latitude: "9.93333", longitude: "-84.08333", population: 335007, country: costa_rica)
# jaco = City.create(name: "Jaco", geonameid: , latitude: "", longitude: "", population: , country: costa_rica)
melbourne = City.create(name: "Melbourne", geonameid: 2158177, latitude: "-37.814", longitude: "144.96332", population: 4246375, country: australia)
sydney = City.create(name: "Sydney", geonameid: 2147714, latitude: "-33.86785", longitude: "151.20732", population: 4627345, country: australia)
auckland = City.create(name: "Auckland", geonameid: 2193733, latitude: "-36.84853", longitude: "174.76349", population: 417910, country: new_zealand)
christchurch = City.create(name: "Christchurch", geonameid: 2192362, latitude: "-43.53333", longitude: "172.63333", population: 363926, country: new_zealand)
buenos_aires = City.create(name: "Buenos Aires", geonameid: 3435910, latitude: "-34.61315", longitude: "-58.37723", population: 13076300, country: argentina)
mendoza = City.create(name: "Mendoza", geonameid: 3844421, latitude: "-32.89084", longitude: "-68.82717", population: 876884, country: argentina)
santiago = City.create(name: "Santiago", geonameid: 3871336, latitude: "-33.45694", longitude: "-70.64827", population: 4837295, country: chile)
valparaiso = City.create(name: "Valparaíso", geonameid: 3868626, latitude: "-33.036", longitude: "-71.62963", population: 282448, country: chile)

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
# destination_16 = Destination.create(city: jaco, itinerary: itinerary_4)
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
event_2 = Event.create(stop: renaissance_barcelona_hotel, itinerary: itinerary_3)


# "AF"	"Afghanistan"
# "AX"	"Åland Islands"
# "AL"	"Albania"
# "DZ"	"Algeria"
# "AS"	"American Samoa"
# "AD"	"Andorra"
# "AO"	"Angola"
# "AI"	"Anguilla"
# "AQ"	"Antarctica"
# "AG"	"Antigua and Barbuda"
# "AR"	"Argentina"
# "AM"	"Armenia"
# "AW"	"Aruba"
# "AU"	"Australia"
# "AT"	"Austria"
# "AZ"	"Azerbaijan"
# "BS"	"Bahamas"
# "BH"	"Bahrain"
# "BD"	"Bangladesh"
# "BB"	"Barbados"
# "BY"	"Belarus"
# "BE"	"Belgium"
# "BZ"	"Belize"
# "BJ"	"Benin"
# "BM"	"Bermuda"
# "BT"	"Bhutan"
# "BO"	"Bolivia"
# "BQ"	"Bonaire, Saint Eustatis, and Saba"
# "BA"	"Bosnia and Herzegovina"
# "BW"	"Botswana"
# "BV"	"Bouvet Island"
# "BR"	"Brazil"
# "IO"	"British Indian Ocean Territory"
# "VG"	"British Virgin Islands"
# "BN"	"Brunei"
# "BG"	"Bulgaria"
# "BF"	"Burkina Faso"
# "BI"	"Burundi"
# "KH"	"Cambodia"
# "CM"	"Cameroon"
# "CA"	"Canada"
# "KY"	"Cayman Islands"
# "CF"	"Central African Republic"
# "TD"	"Chad"
# "CL"	"Chile"
# "CN"	"China"
# "CX"	"Christmas Island"
# "CC"	"Cocos [Keeling] Islands"
# "CO"	"Colombia"
# "KM"	"Comoros"
# "CK"	"Cook Islands"
# "CR"	"Costa Rica"
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