import React, { useState, useEffect } from "react"
import _ from "lodash"
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
      setCity(responseBody.city)
    } catch(error) {
      console.error(`Error in fetch; ${error.message}`)
    }
  }

  let newItineraryButton

  if (city.current_user) {
    newItineraryButton = 
      <Link to={`/cities/${city.id}/itineraries/new`}>
        <button className="button">
          Add new itinerary
        </button>
      </Link>
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
      {newItineraryButton}
    </div>
  )
}

export default CityShowPage