import React, { useState, useEffect } from "react"
import _ from "lodash"

const SecondNewItineraryForm = (props) => {
  const [countriesList, setCountriesList] = useState([])
  const [selectedCountry, setSelectedCountry] = useState("")
  const [citiesList, setCitiesList] = useState([])
  const [selectedCityId, setSelectedCityId] = useState("")
  const [foundOrCreatedCity, setFoundOrCreatedCity] = useState({})
  const [itineraryRecord, setItineraryRecord] = useState({
    name: "",
    departure_date: "",
    return_date: ""
  })

  const fetchCountries = async() => {
    try {
      const response = await fetch('/api/v1/countries')
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const countriesData = await response.json()
      setCountriesList(countriesData)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  const fetchCities = async() => {
    try {
      const countryId = selectedCountry
      const response = await fetch(`/api/v1/countries/${countryId}/cities`)
      const responseBody = await response.json()
      if (responseBody.status === 'failed') {
        const errorMessage = `${responseBody.error.code} (${responseBody.error.message})`
        throw new Error(errorMessage)
      }
      const citiesData = responseBody.cities.sort((a,b) => b.population - a.population)
      setCitiesList(citiesData)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  // const findOrCreateCity = async() => {
  //   try{
  //     const cityId = selectedCityId
  //     const response = await fetch(`/api/v1/cities?city_id=${cityId}`, {
  //       method: "POST",
  //       credentials: "same-origin",
  //       headers: {
  //         "Accept": "application/json",
  //         "Content-Type": "application/json"
  //       },
  //       body: JSON.stringify({ city_id: selectedCityId })
  //     })
  //     if (!response.ok) {
  //       const errorMessage = `${response.status} (${response.statusText})`
  //       throw new Error(errorMessage)
  //     }
  //     const responseBody = await response.json()
  //     setFoundOrCreatedCity(responseBody.city)
  //   } catch(error) {
  //     console.error(`Error in fetch: ${error.message}`)
  //   }
  // }
  
  useEffect(() => {
    fetchCountries()
  }, [])

  const handleCountryChange = (event) => {
    setSelectedCountry(event.currentTarget.value)
  }
  
  useEffect(() => {
    !_.isEmpty(selectedCountry) && fetchCities()
  }, [selectedCountry])
  
  const handleCityIdChange = (event) => {
    setSelectedCityId(event.currentTarget.value)
  }

  useEffect(() => {
    !_.isEmpty(selectedCityId) && findOrCreateCity()
  }, [selectedCityId])
  
  const handleInputChange = (event) => {
    setItineraryRecord({
      ...itineraryRecord,
      [event.currentTarget.name]: event.currentTarget.value
    })
  }

  console.log(itineraryRecord)
  console.log(selectedCountry)
  console.log(selectedCityId)

  return(
    <form>
      <h1>(Second) New Itinerary Form</h1>
        <div className="grid-container form-container">
          <div className="grid-x grid-padding-x">
            <div className="large-4 medium-6 small-12 cell">
              <label>
                Country
                <select onChange={handleCountryChange} name="country_id" >
                  <option value="">
                    Make selection
                  </option>
                  {countriesList.map((country) => (
                    <option key={country.id} value={country.id}>
                      {country.name}
                    </option>
                  ))}
                </select>
              </label>
            </div>

            <div className="large-4 medium-6 small-12 cell">
              <label>
                City
                <select onChange={handleCityIdChange} name="city_geonameid" >
                  <option value="">
                    Make selection
                  </option>
                  {citiesList.map((city) => (
                    <option key={city.geonameid} value={city.geonameid}>
                      {city.name}
                    </option>
                  ))}
                </select>
              </label>
            </div>

            <div className="large-4 medium-6 small-12 cell">
              <label>
                Itinerary Name
                <input
                  type="text"
                  placeholder="Ex: Oktoberfest in Germany"
                  name="name"
                  value={itineraryRecord.name}
                  onChange={handleInputChange}
                />
              </label>
            </div>

            <div className="large-4 medium-6 small-12 cell">
              <label>
                Departure Date
                <input
                  type="date"
                  name="departure_date"
                  value={itineraryRecord.departureDate}
                  onChange={handleInputChange}
                />
              </label>
            </div>

            <div className="large-4 medium-6 small-12 cell">
              <label>
                Return Date
                <input
                  type="date"
                  name="return_date"
                  value={itineraryRecord.returnDate}
                  onChange={handleInputChange}
                />
              </label>
            </div>

            <div className="button-group cell form-text">
              <input
                className="button"
                type="submit"
              />
            </div>
          </div>
        </div>
    </form>
  )
}

export default SecondNewItineraryForm