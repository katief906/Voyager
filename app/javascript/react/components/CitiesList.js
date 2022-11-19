import React, { useState, useEffect } from "react"
import { Link } from "react-router-dom"
import CityTile from "./CityTile"

const CitiesList = (props) => {
  const [cities, setCities] = useState([])
  const fetchCities = async() => {
    try {
      const countryId = props.country.id
      const response = await fetch(`/api/v1/countries/${countryId}/cities`)
      const responseBody = await response.json()
      if (responseBody.status === 'failed') {
        const errorMessage = `${responseBody.error.code} (${responseBody.error.message})`
        setMessage("No cities found")
        throw new Error(errorMessage)
      }
      const citiesData = responseBody.cities
      setCities(citiesData)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  let message
  let cityTiles

  if (cities.length > 0) {
    message = `${cities.length} cities found:`
    cities.sort((a, b) => a.name - b.name)
    cityTiles = cities.map((city) => {
      return(
        <CityTile
          key={city.geonameid}
          city={city}
        />
      )
    })
  } else {
    message = "No cities found"
  }

  useEffect(() => {
    fetchCities()
  }, [])

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