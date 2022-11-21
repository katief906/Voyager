import React, { useState, useEffect } from "react"
import { Link } from "react-router-dom"

const CityShowPage = (props) => {
  const [city, setCity] = useState({})
  const [picture, setPicture] = useState({})

  const fetchCity = async() => {
    try {
      const cityId = props.match.params.id
      const response = await fetch(`/api/v1/cities/${cityId}`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      setCity(responseBody)
    } catch(error) {
      console.error(`Error in fetch; ${error.message}`)
    }
  }

  useEffect(() => {
    fetchCity()
  }, [])

  return(
    <div>
      <h1>{city.name}</h1>
      <ul>
        <li>Geonameid: {city.geonameid}</li>
        <li>Population: {city.population}</li>
        <li>Latitude: {city.latitude}</li>
        <li>Longitude: {city.longitude}</li>
      </ul>
      <Link to={`/cities/${city.id}/itineraries/new`}>
        <button className="button">
          Add new itinerary
        </button>
      </Link>
    </div>
  )
}

export default CityShowPage