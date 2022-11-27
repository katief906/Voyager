# Continents
africa = Continent.find_or_create_by(name: "Africa", picture: "https://upload.wikimedia.org/wikipedia/commons/3/3f/Africa_in_the_world_%28red%29_%28W3%29.svg")
asia = Continent.find_or_create_by(name: "Asia", picture: "https://upload.wikimedia.org/wikipedia/commons/f/fd/Asia_in_the_world_%28red%29_%28W3%29.svg")
europe = Continent.find_or_create_by(name: "Europe", picture: "https://upload.wikimedia.org/wikipedia/commons/a/a0/Europe_in_the_world_%28red%29_%28W3%29.svg")
north_america = Continent.find_or_create_by(name: "North America", picture: "https://upload.wikimedia.org/wikipedia/commons/d/d8/North_America_in_the_world_%28red%29_%28W3%29.svg")
oceania = Continent.find_or_create_by(name: "Oceania", picture: "https://upload.wikimedia.org/wikipedia/commons/a/a1/Oceania_in_the_world_%28red%29_%28W3%29.svg")
south_america = Continent.find_or_create_by(name: "South America", picture: "https://upload.wikimedia.org/wikipedia/commons/2/28/South_America_in_the_world_%28red%29_%28W3%29.svg")

# ALL COUNTRIES
# Africa
algeria = Country.find_or_create_by(name: "Algeria", country_code: "DZ", continent: africa)
angola = Country.find_or_create_by(name: "Angola", country_code: "AO", continent: africa)
benin = Country.find_or_create_by(name: "Benin", country_code: "BJ", continent: africa)
botswana = Country.find_or_create_by(name: "Botswana", country_code: "BW", continent: africa)
burkina_faso = Country.find_or_create_by(name: "Burkina Faso", country_code: "BF", continent: africa)
burundi = Country.find_or_create_by(name: "Burundi", country_code: "BI", continent: africa)
cameroon = Country.find_or_create_by(name: "Cameroon", country_code: "CM", continent: africa)
cape_verde = Country.find_or_create_by(name: "Cape Verde (Republic of Cabo Verde)", country_code: "CV", continent: africa)
central_african_republic = Country.find_or_create_by(name: "Central African Republic", country_code: "CF", continent: africa)
chad = Country.find_or_create_by(name: "Chad", country_code: "TD", continent: africa)
comoros = Country.find_or_create_by(name: "Comoros", country_code: "KM", continent: africa)
democratic_republic_of_the_congo = Country.find_or_create_by(name: "Democratic Republic of the Congo", country_code: "CD", continent: africa)
djibouti = Country.find_or_create_by(name: "Djibouti", country_code: "DJ", continent: africa)
egypt = Country.find_or_create_by(name: "Egypt", country_code: "EG", continent: africa)
equatorial_guinea = Country.create(name: "Equatorial Guinea", country_code: "GQ", continent: africa)
eritrea = Country.find_or_create_by(name: "Eritrea", country_code: "ER", continent: africa)
eswatini = Country.find_or_create_by(name: "Eswatini", country_code: "SZ", continent: africa)
ethiopia = Country.find_or_create_by(name: "Ethiopia", country_code: "ET", continent: africa)
gabon = Country.find_or_create_by(name: "Gabon", country_code: "GA", continent: africa)
ghana = Country.find_or_create_by(name: "Ghana", country_code: "GH", continent: africa)
guinea = Country.find_or_create_by(name: "Guinea", country_code: "GN", continent: africa)
guinea_bissau = Country.find_or_create_by(name: "Guinea-Bissau", country_code: "GW", continent: africa)
ivory_coast = Country.find_or_create_by(name: "Ivory Coast (Côte d'Ivoire)", country_code: "CI", continent: africa)
kenya = Country.find_or_create_by(name: "Kenya", country_code: "KE", continent: africa)
lesotho = Country.find_or_create_by(name: "Lesotho", country_code: "LS", continent: africa)
liberia = Country.find_or_create_by(name: "Liberia", country_code: "LR", continent: africa)
libya = Country.find_or_create_by(name: "Libya", country_code: "LY", continent: africa)
madagascar = Country.find_or_create_by(name: "Madagascar", country_code: "MG", continent: africa)
malawi = Country.find_or_create_by(name: "Malawi", country_code: "MW", continent: africa)
mali = Country.find_or_create_by(name: "Mali", country_code: "ML", continent: africa)
mauritania = Country.find_or_create_by(name: "Mauritania", country_code: "MR", continent: africa)
mauritius = Country.find_or_create_by(name: "Mauritius", country_code: "MU", continent: africa)
morocco = Country.find_or_create_by(name: "Morocco", country_code: "MA", continent: africa)
mozambique = Country.find_or_create_by(name: "Mozambique", country_code: "MZ", continent: africa)
namibia = Country.find_or_create_by(name: "Namibia", country_code: "NA", continent: africa)
niger = Country.find_or_create_by(name: "Niger", country_code: "NE", continent: africa)
nigeria = Country.find_or_create_by(name: "Nigeria", country_code: "NG", continent: africa)
republic_of_the_congo = Country.find_or_create_by(name: "Republic of the Congo", country_code: "CG", continent: africa)
rwanda = Country.find_or_create_by(name: "Rwanda", country_code: "RW", continent: africa)
sao_tome_and_principe = Country.create(name: "Sao Tome and Principe", country_code: "ST", continent: africa)
senegal = Country.find_or_create_by(name: "Senegal", country_code: "SN", continent: africa)
seychelles = Country.find_or_create_by(name: "Seychelles", country_code: "SC", continent: africa)
sierra_leone = Country.find_or_create_by(name: "Sierra Leone", country_code: "SL", continent: africa)
somalia = Country.find_or_create_by(name: "Somalia", country_code: "SO", continent: africa)
south_africa = Country.find_or_create_by(name: "South Africa (Republic of South Africa)", country_code: "ZA", continent: africa)
south_sudan = Country.find_or_create_by(name: "South Sudan (Republic of South Sudan)", country_code: "SS", continent: africa)
sudan = Country.find_or_create_by(name: "Sudan", country_code: "SD", continent: africa)
tanzania = Country.find_or_create_by(name: "Tanzania", country_code: "TZ", continent: africa)
the_gambia = Country.find_or_create_by(name: "The Gambia", country_code: "GM", continent: africa)
togo = Country.find_or_create_by(name: "Togo", country_code: "TG", continent: africa)
tunisia = Country.find_or_create_by(name: "Tunisia", country_code: "TN", continent: africa)
uganda = Country.find_or_create_by(name: "Uganda", country_code: "UG", continent: africa)
zambia = Country.find_or_create_by(name: "Zambia", country_code: "ZM", continent: africa)
zimbabwe = Country.find_or_create_by(name: "Zimbabwe", country_code: "ZW", continent: africa)


# Asia
afghanistan = Country.find_or_create_by(name: "Afghanistan", country_code: "AF", continent: asia)
armenia = Country.find_or_create_by(name: "Armenia", country_code: "AM", continent: asia)
azerbaijan = Country.find_or_create_by(name: "Azerbaijan", country_code: "AZ", continent: asia)
bahrain = Country.find_or_create_by(name: "Bahrain", country_code: "BH", continent: asia)
bangladesh = Country.find_or_create_by(name: "Bangladesh", country_code: "BD", continent: asia)
bhutan = Country.find_or_create_by(name: "Bhutan", country_code: "BT", continent: asia)
brunei = Country.find_or_create_by(name: "Brunei", country_code: "BN", continent: asia)
cambodia = Country.find_or_create_by(name: "Cambodia", country_code: "KH", continent: asia)
china = Country.find_or_create_by(name: "China", country_code: "CN", continent: asia)
georgia = Country.find_or_create_by(name: "Georgia", country_code: "GE", continent: asia)
hong_kong = Country.find_or_create_by(name: "Hong Kong S.A.R.", country_code: "HK", continent: asia)
india = Country.find_or_create_by(name: "India", country_code: "IN", continent: asia)
indonesia = Country.find_or_create_by(name: "Indonesia", country_code: "ID", continent: asia)
iran = Country.find_or_create_by(name: "Iran", country_code: "IR", continent: asia)
iraq = Country.find_or_create_by(name: "Iraq", country_code: "IQ", continent: asia)
israel = Country.find_or_create_by(name: "Israel", country_code: "IL", continent: asia)
japan = Country.find_or_create_by(name: "Japan", country_code: "JP", continent: asia)
jordan = Country.find_or_create_by(name: "Jordan (Hashemite Kingdom of Jordan)", country_code: "JO", continent: asia)
kazakhstan = Country.find_or_create_by(name: "Kazakhstan", country_code: "KZ", continent: asia)
kuwait = Country.find_or_create_by(name: "Kuwait", country_code: "KW", continent: asia)
kyrgyzstan = Country.find_or_create_by(name: "Kyrgyzstan", country_code: "KG", continent: asia)
laos = Country.find_or_create_by(name: "Laos", country_code: "LA", continent: asia)
lebanon = Country.find_or_create_by(name: "Lebanon", country_code: "LB", continent: asia)
macao = Country.find_or_create_by(name: "Macao S.A.R. (Macau)", country_code: "MO", continent: asia)
malaysia = Country.find_or_create_by(name: "Malaysia", country_code: "MY", continent: asia)
maldives = Country.find_or_create_by(name: "Maldives", country_code: "MV", continent: asia)
mongolia = Country.find_or_create_by(name: "Mongolia", country_code: "MN", continent: asia)
myanmar = Country.find_or_create_by(name: "Myanmar", country_code: "MM", continent: asia)
nepal = Country.find_or_create_by(name: "Nepal", country_code: "NP", continent: asia)
north_korea = Country.find_or_create_by(name: "North Korea", country_code: "KP", continent: asia)
oman = Country.find_or_create_by(name: "Oman", country_code: "OM", continent: asia)
pakistan = Country.find_or_create_by(name: "Pakistan", country_code: "PK", continent: asia)
palestine = Country.find_or_create_by(name: "Palestine", country_code: "PS", continent: asia)
philippines = Country.find_or_create_by(name: "Philippines", country_code: "PH", continent: asia)
qatar = Country.find_or_create_by(name: "Qatar", country_code: "QA", continent: asia)
saudi_arabia = Country.find_or_create_by(name: "Saudi Arabia", country_code: "SA", continent: asia)
singapore = Country.find_or_create_by(name: "Singapore", country_code: "SG", continent: asia)
south_korea = Country.find_or_create_by(name: "South Korea (Republic of Korea)", country_code: "KR", continent: asia)
sri_lanka = Country.find_or_create_by(name: "Sri Lanka", country_code: "LK", continent: asia)
syria = Country.find_or_create_by(name: "Syria", country_code: "SY", continent: asia)
taiwan = Country.find_or_create_by(name: "Taiwan (Taiwan ROC)", country_code: "TW", continent: asia)
tajikistan = Country.find_or_create_by(name: "Tajikistan", country_code: "TJ", continent: asia)
thailand = Country.find_or_create_by(name: "Thailand", country_code: "TH", continent: asia)
timor_leste = Country.find_or_create_by(name: "Timor-Leste", country_code: "TL", continent: asia)
turkmenistan = Country.find_or_create_by(name: "Turkmenistan", country_code: "TM", continent: asia)
united_arab_emirates = Country.find_or_create_by(name: "United Arab Emirates", country_code: "AE", continent: asia)
uzbekistan = Country.find_or_create_by(name: "Uzbekistan", country_code: "UZ", continent: asia)
vietnam = Country.find_or_create_by(name: "Vietnam", country_code: "VN", continent: asia)
yemen = Country.find_or_create_by(name: "Yemen", country_code: "YE", continent: asia)

# # Europe
albania = Country.find_or_create_by(name: "Albania", country_code: "AL", continent: europe)
andorra = Country.find_or_create_by(name: "Andorra", country_code: "AD", continent: europe)
austria = Country.find_or_create_by(name: "Austria", country_code: "AT", continent: europe)
belarus = Country.find_or_create_by(name: "Belarus", country_code: "BY", continent: europe)
belgium = Country.find_or_create_by(name: "Belgium", country_code: "BE", continent: europe)
bosnia_and_herzegovina = Country.find_or_create_by(name: "Bosnia and Herzegovina", country_code: "BA", continent: europe)
bulgaria = Country.find_or_create_by(name: "Bulgaria", country_code: "BG", continent: europe)
croatia = Country.find_or_create_by(name: "Croatia", country_code: "HR", continent: europe)
cyprus = Country.find_or_create_by(name: "Cyprus", country_code: "CY", continent: europe)
czech_republic = Country.find_or_create_by(name: "Czech Republic", country_code: "CZ", continent: europe)
denmark = Country.find_or_create_by(name: "Denmark", country_code: "DK", continent: europe)
estonia = Country.find_or_create_by(name: "Estonia", country_code: "EE", continent: europe)
finland = Country.find_or_create_by(name: "Finland", country_code: "FI", continent: europe)
france = Country.find_or_create_by(name: "France", country_code: "FR", continent: europe)
germany = Country.find_or_create_by(name: "Germany", country_code: "DE", continent: europe)
greece = Country.find_or_create_by(name: "Greece", country_code: "GR", continent: europe)
hungary = Country.find_or_create_by(name: "Hungary", country_code: "HU", continent: europe)
iceland = Country.find_or_create_by(name: "Iceland", country_code: "IS", continent: europe)
ireland = Country.find_or_create_by(name: "Ireland", country_code: "IE", continent: europe)
italy = Country.find_or_create_by(name: "Italy", country_code: "IT", continent: europe)
latvia = Country.find_or_create_by(name: "Latvia", country_code: "LV", continent: europe)
liechtenstein = Country.find_or_create_by(name: "Liechtenstein", country_code: "LI", continent: europe)
lithuania = Country.find_or_create_by(name: "Lithuania (Republic of Lithuania)", country_code: "LT", continent: europe)
luxembourg = Country.find_or_create_by(name: "Luxembourg", country_code: "LU", continent: europe)
malta = Country.find_or_create_by(name: "Malta", country_code: "MT", continent: europe)
moldova = Country.find_or_create_by(name: "Moldova (Republic of Moldova)", country_code: "MD", continent: europe)
monaco = Country.find_or_create_by(name: "Monaco", country_code: "MC", continent: europe)
montenegro = Country.find_or_create_by(name: "Montenegro", country_code: "ME", continent: europe)
netherlands = Country.find_or_create_by(name: "Netherlands", country_code: "NL", continent: europe)
north_macedonia = Country.find_or_create_by(name: "North Macedonia", country_code: "MK", continent: europe)
norway = Country.find_or_create_by(name: "Norway", country_code: "NO", continent: europe)
poland = Country.find_or_create_by(name: "Poland", country_code: "PL", continent: europe)
portugal = Country.find_or_create_by(name: "Portugal", country_code: "PT", continent: europe)
romania = Country.find_or_create_by(name: "Romania", country_code: "RO", continent: europe)
russia = Country.find_or_create_by(name: "Russia", country_code: "RU", continent: europe)
san_marino = Country.find_or_create_by(name: "San Marino", country_code: "SM", continent: europe)
serbia = Country.find_or_create_by(name: "Serbia", country_code: "RS", continent: europe)
slovakia = Country.find_or_create_by(name: "Slovakia", country_code: "SK", continent: europe)
slovenia = Country.find_or_create_by(name: "Slovenia", country_code: "SI", continent: europe)
spain = Country.find_or_create_by(name: "Spain", country_code: "ES", continent: europe)
sweden = Country.find_or_create_by(name: "Sweden", country_code: "SE", continent: europe)
switzerland = Country.find_or_create_by(name: "Switzerland", country_code: "CH", continent: europe)
turkey = Country.find_or_create_by(name: "Turkey", country_code: "TR", continent: europe)
ukraine = Country.find_or_create_by(name: "Ukraine", country_code: "UA", continent: europe)
united_kingdom = Country.find_or_create_by(name: "United Kingdom", country_code: "GB", continent: europe)
vatican_city = Country.find_or_create_by(name: "Vatican City", country_code: "VA", continent: europe)

# # North America
antigua_and_barbuda = Country.find_or_create_by(name: "Antigua and Barbuda", country_code: "AG", continent: north_america)
bahamas = Country.find_or_create_by(name: "Bahamas", country_code: "BS", continent: north_america)
barbados = Country.find_or_create_by(name: "Barbados", country_code: "BB", continent: north_america)
belize = Country.find_or_create_by(name: "Belize", country_code: "BZ", continent: north_america)
canada = Country.find_or_create_by(name: "Canada", country_code: "CA", continent: north_america)
costa_rica = Country.find_or_create_by(name: "Costa Rica", country_code: "CR", continent: north_america)
cuba = Country.find_or_create_by(name: "Cuba", country_code: "CU", continent: north_america)
dominica = Country.find_or_create_by(name: "Dominica", country_code: "DM", continent: north_america)
dominican_republic = Country.find_or_create_by(name: "Dominican Republic", country_code: "DO", continent: north_america)
el_salvador = Country.find_or_create_by(name: "El Salvador", country_code: "SV", continent: north_america)
grenada = Country.find_or_create_by(name: "Grenada", country_code: "GD", continent: north_america)
guatemala = Country.find_or_create_by(name: "Guatemala", country_code: "GT", continent: north_america)
haiti = Country.find_or_create_by(name: "Haiti", country_code: "HT", continent: north_america)
honduras = Country.find_or_create_by(name: "Honduras", country_code: "HN", continent: north_america)
jamaica = Country.find_or_create_by(name: "Jamaica", country_code: "JM", continent: north_america)
mexico = Country.find_or_create_by(name: "Mexico", country_code: "MX", continent: north_america)
nicaragua = Country.find_or_create_by(name: "Nicaragua", country_code: "NI", continent: north_america)
panama = Country.find_or_create_by(name: "Panama", country_code: "PA", continent: north_america)
saint_kitts_and_nevis = Country.find_or_create_by(name: "Saint Kitts and Nevis", country_code: "KN", continent: north_america)
saint_lucia = Country.find_or_create_by(name: "Saint Lucia", country_code: "LC", continent: north_america)
saint_vincent_and_the_grenadines = Country.find_or_create_by(name: "Saint Vincent and the Grenadines", country_code: "VC", continent: north_america)
trinidad_and_tobago = Country.find_or_create_by(name: "Trinidad and Tobago", country_code: "TT", continent: north_america)
united_states_of_america = Country.find_or_create_by(name: "United States of America", country_code: "US", continent: north_america)


# # Oceania
australia = Country.find_or_create_by(name: "Australia", country_code: "AU", continent: oceania)
fiji = Country.find_or_create_by(name: "Fiji", country_code: "FJ", continent: oceania)
kiribati = Country.find_or_create_by(name: "Kiribati", country_code: "KI", continent: oceania)
marshall_islands = Country.find_or_create_by(name: "Marshall Islands", country_code: "MH", continent: oceania)
micronesia = Country.find_or_create_by(name: "Micronesia", country_code: "FM", continent: oceania)
nauru = Country.find_or_create_by(name: "Nauru (Republic of Nauru)", country_code: "NR", continent: oceania)
new_zealand = Country.find_or_create_by(name: "New Zealand", country_code: "NZ", continent: oceania)
palau = Country.find_or_create_by(name: "Palau", country_code: "PW", continent: oceania)
papua_new_guinea = Country.find_or_create_by(name: "Papua New Guinea", country_code: "PG", continent: oceania)
samoa = Country.find_or_create_by(name: "Samoa", country_code: "WS", continent: oceania)
solomon_islands = Country.find_or_create_by(name: "Solomon Islands", country_code: "SB", continent: oceania)
tonga = Country.find_or_create_by(name: "Tonga", country_code: "TO", continent: oceania)
tuvalu = Country.find_or_create_by(name: "Tuvalu", country_code: "TV", continent: oceania)
vanuatu = Country.find_or_create_by(name: "Vanuatu", country_code: "VU", continent: oceania)


# # South America
argentina = Country.find_or_create_by(name: "Argentina", country_code: "AR", continent: south_america)
bolivia = Country.find_or_create_by(name: "Bolivia", country_code: "BO", continent: south_america)
brazil = Country.find_or_create_by(name: "Brazil", country_code: "BR", continent: south_america)
chile = Country.find_or_create_by(name: "Chile", country_code: "CL", continent: south_america)
columbia = Country.find_or_create_by(name: "Columbia", country_code: "CO", continent: south_america)
ecuador = Country.find_or_create_by(name: "Ecuador", country_code: "EC", continent: south_america)
guyana = Country.find_or_create_by(name: "Guyana", country_code: "GY", continent: south_america)
paraguay = Country.find_or_create_by(name: "Paraguay", country_code: "PY", continent: south_america)
peru = Country.find_or_create_by(name: "Peru", country_code: "PE", continent: south_america)
suriname = Country.find_or_create_by(name: "Suriname", country_code: "SR", continent: south_america)
uruguay = Country.find_or_create_by(name: "Uruguay", country_code: "UY", continent: south_america)
venezuela = Country.find_or_create_by(name: "Venezuela", country_code: "VE", continent: south_america)

# Cities
marrakesh = City.find_or_create_by(name: "Marrakesh", geonameid: 2542997, latitude: "31.63416" , longitude: "-7.99994", population: 839296, country: morocco)
fes = City.find_or_create_by(name: "Fes", geonameid: 2548885, latitude: "34.03313" , longitude: "-5.00028", population: 964891, country: morocco)
cape_town = City.find_or_create_by(name: "Cape Town", geonameid: 3369157, latitude: "-33.92584", longitude: "18.42322", population: 4710000, country: south_africa)
johannesburg = City.find_or_create_by(name: "Johannesburg", geonameid: 993800, latitude: "-26.20227", longitude: "28.04363", population: 5635127, country: south_africa)
beijing = City.find_or_create_by(name: "Beijing", geonameid: 1816670, latitude: "39.9075", longitude: "116.39723", population: 18960744, country: china)
shanghai = City.find_or_create_by(name: "Shanghai", geonameid: 1796236, latitude: "31.22222", longitude: "121.45806", population: 22315474, country: china)
tokyo = City.find_or_create_by(name: "Tokyo", geonameid: 1850147, latitude: "35.6895", longitude: "139.69171", population: 8336599, country: japan)
kyoto = City.find_or_create_by(name: "Kyoto", geonameid: 1857910, latitude: "35.02107", longitude: "135.75385", population: 1463723, country: japan)
paris = City.find_or_create_by(name: "Paris", geonameid: 2988507, latitude: "48.864716", longitude: "2.349014", population: 2138551, country: france)
lyon = City.find_or_create_by(name: "Lyon", geonameid: 2996944, latitude: "45.74846", longitude: "4.84671", population: 472317, country: france)
madrid = City.find_or_create_by(name: "Madrid", geonameid: 3117735, latitude: "40.4165", longitude: "-3.70256", population: 3255944, country: spain)
barcelona = City.find_or_create_by(name: "Barcelona", geonameid: 3128760, latitude: "41.38879", longitude: "2.15899", population: 1620343, country: spain)
mexico_city = City.find_or_create_by(name: "Mexico City", geonameid: 3530597, latitude: "19.42847", longitude: "-99.12766", population: 12294193, country: mexico)
oaxaca = City.find_or_create_by(name: "Oaxaca City", geonameid: 3522507, latitude: "17.06542", longitude: "-96.72365", population: 255029, country: mexico)
san_jose = City.find_or_create_by(name: "San José", geonameid: 3621849, latitude: "9.93333", longitude: "-84.08333", population: 335007, country: costa_rica)
# jaco = City.create(name: "Jaco", geonameid: , latitude: "", longitude: "", population: , country: costa_rica)
melbourne = City.find_or_create_by(name: "Melbourne", geonameid: 2158177, latitude: "-37.814", longitude: "144.96332", population: 4246375, country: australia)
sydney = City.find_or_create_by(name: "Sydney", geonameid: 2147714, latitude: "-33.86785", longitude: "151.20732", population: 4627345, country: australia)
auckland = City.find_or_create_by(name: "Auckland", geonameid: 2193733, latitude: "-36.84853", longitude: "174.76349", population: 417910, country: new_zealand)
christchurch = City.find_or_create_by(name: "Christchurch", geonameid: 2192362, latitude: "-43.53333", longitude: "172.63333", population: 363926, country: new_zealand)
buenos_aires = City.find_or_create_by(name: "Buenos Aires", geonameid: 3435910, latitude: "-34.61315", longitude: "-58.37723", population: 13076300, country: argentina)
mendoza = City.find_or_create_by(name: "Mendoza", geonameid: 3844421, latitude: "-32.89084", longitude: "-68.82717", population: 876884, country: argentina)
santiago = City.find_or_create_by(name: "Santiago", geonameid: 3871336, latitude: "-33.45694", longitude: "-70.64827", population: 4837295, country: chile)
valparaiso = City.find_or_create_by(name: "Valparaíso", geonameid: 3868626, latitude: "-33.036", longitude: "-71.62963", population: 282448, country: chile)

# Users
katie = User.create(first_name: "Katie", last_name: "Foley", email: "katief906@gmail.com", password: "Ilovecoding4fun!", role: "admin")
karen = User.create(first_name: "Karen", last_name: "Wong", email: "karen@aol.com", password: "Bobalover2022")
alana = User.create(first_name: "Alana", last_name: "Lee", email: "alana@outlook.com", password: "Earlgraymilktea4life")
taylor = User.create(first_name: "Taylor", last_name: "Le", email: "taylor.l.kingston@gmail.com", password: "OoooLong5")

# Itineraries
itinerary_1 = Itinerary.find_or_create_by(name: "Wildlife in Morocco and South Africa", user: taylor)
itinerary_2 = Itinerary.find_or_create_by(name: "Metropoli of China and Japan", user: alana)
itinerary_3 = Itinerary.find_or_create_by(name: "Wine of France & Spain", user: katie)
itinerary_4 = Itinerary.find_or_create_by(name: "Natural Wonders of Mexico and Costa Rica", user: karen)
itinerary_5 = Itinerary.find_or_create_by(name: "Diving in Australia and New Zealand", user: katie)
itinerary_6 = Itinerary.find_or_create_by(name: "Hiking in Argentina and Chile", user: katie)

# Destinations
destination_1 = Destination.find_or_create_by(city: marrakesh, itinerary: itinerary_1)
destination_2 = Destination.find_or_create_by(city: fes, itinerary: itinerary_1)
destination_3 = Destination.find_or_create_by(city: cape_town, itinerary: itinerary_1)
destination_4 = Destination.find_or_create_by(city: johannesburg, itinerary: itinerary_1)
destination_5 = Destination.find_or_create_by(city: beijing, itinerary: itinerary_2)
destination_6 = Destination.find_or_create_by(city: shanghai, itinerary: itinerary_2)
destination_7 = Destination.find_or_create_by(city: tokyo, itinerary: itinerary_2)
destination_8 = Destination.find_or_create_by(city: kyoto, itinerary: itinerary_2)
destination_9 = Destination.find_or_create_by(city: paris, itinerary: itinerary_3)
destination_10 = Destination.find_or_create_by(city: lyon, itinerary: itinerary_3)
destination_11 = Destination.find_or_create_by(city: madrid, itinerary: itinerary_3)
destination_12 = Destination.find_or_create_by(city: barcelona, itinerary: itinerary_3)
destination_13 = Destination.find_or_create_by(city: mexico_city, itinerary: itinerary_4)
destination_14 = Destination.find_or_create_by(city: oaxaca, itinerary: itinerary_4)
destination_15 = Destination.find_or_create_by(city: san_jose, itinerary: itinerary_4)
# destination_16 = Destination.create(city: jaco, itinerary: itinerary_4)
destination_17 = Destination.find_or_create_by(city: melbourne, itinerary: itinerary_5)
destination_18 = Destination.find_or_create_by(city: sydney, itinerary: itinerary_5)
destination_19 = Destination.find_or_create_by(city: auckland, itinerary: itinerary_5)
destination_20 = Destination.find_or_create_by(city: christchurch, itinerary: itinerary_5)
destination_21 = Destination.find_or_create_by(city: buenos_aires, itinerary: itinerary_6)
destination_22 = Destination.find_or_create_by(city: mendoza, itinerary: itinerary_6)
destination_23 = Destination.find_or_create_by(city: santiago, itinerary: itinerary_6)
destination_24 = Destination.find_or_create_by(city: valparaiso, itinerary: itinerary_6)

# Stops
eiffel = Stop.find_or_create_by(name: "Eiffel Tower", address: "Champ de Mars, 5 Av. Anatole France", zip: "75007", city: paris)
hotel_regina_louvre = Stop.find_or_create_by(name: "Hotel Regina Louvre", address: "2 Pl. des Pyramides", zip: "75001", city: paris)
la_sagrada_familia = Stop.find_or_create_by(name: "La Sagrada Familia", address: "C/ de Mallorca, 401", zip: "08013", city: barcelona)
renaissance_barcelona_hotel = Stop.find_or_create_by(name: "Renaissance Barcelona Hotel", address: "C/ de Pau Claris, 122", zip: "08009", city: barcelona)

# Events
event_1 = Event.find_or_create_by(stop: eiffel, itinerary: itinerary_3)
event_2 = Event.find_or_create_by(stop: renaissance_barcelona_hotel, itinerary: itinerary_3)


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