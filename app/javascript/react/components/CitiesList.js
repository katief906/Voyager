import React, { useState, useEffect } from "react"
import { Redirect } from "react-router-dom"
import CityTile from "./CityTile"

const CitiesList = (props) => {
  const [cities, setCities] = useState([])
  const [selectedCity, setSelectedCity] = useState({
    name: "",
    geonameid: "",
    latitude: "",
    longitude: "",
    population: ""
  })
  const [foundOrCreatedCity, setFoundOrCreatedCity] = useState({})
  const [shouldRedirect, setShouldRedirect] = useState(false)

  const fetchCities = async() => {
    try {
      const countryId = props.country.id
      const response = await fetch(`/api/v1/countries/${countryId}/cities`)
      const responseBody = await response.json()
      if (responseBody.status === 'failed') {
        const errorMessage = `${responseBody.error.code} (${responseBody.error.message})`
        throw new Error(errorMessage)
      }
      const citiesData = responseBody.cities.sort((a,b) => b.population - a.population)
      setCities(citiesData)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  const findOrCreateCity = async() => {
    try{
      const response = await fetch(`/api/v1/cities`, {
        method: "POST",
        credentials: "same-origin",
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify({ city: selectedCity })
      })
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      setFoundOrCreatedCity(responseBody.city)
      setShouldRedirect(true)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  let message
  let cityTiles
  
  useEffect(() => {
    fetchCities()
  }, [])

  if (selectedCity.name !== ""){
    findOrCreateCity()
  }
  
  if (cities.length) {
    message = `${cities.length} cities found:`
    cities.sort((a, b) => a.name - b.name)
    cityTiles = cities.map((city) => {
      return(
        <CityTile
        key={city.geonameid}
        city={city}
        cityId={city.geonameid}
        country={props.country}
        selectedCity={selectedCity}
        setSelectedCity={setSelectedCity}
        />
        )
    })
  } else {
    message = "No cities found"
  }

  if (shouldRedirect) {
    return <Redirect to={`/cities/${foundOrCreatedCity.id}`} />
  }

  return(
    <div>
      <h5 className = "text-center">
        {message}
      </h5>
      <ul>
        {cityTiles}
      </ul>
    </div>
  )
}

export default CitiesList