import _ from "lodash"
import React, { useState, useEffect } from "react"

const NewStopForm = (props) => {
  const [city, setCity] = useState({})
  const [readyToFetchStops, setReadyToFetchStops] = useState(false)
  const [stops, setStops] = useState([])
  const [selectedStop, setSelectedStop] = useState({})

  const fetchCity = async() => {
    try {
      debugger
      const cityId = props.match.params.city_id
      const response = await fetch(`/api/v1/cities/${cityId}`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      debugger
      setCity(responseBody.city)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  const fetchStops = async() => {
    try {
      debugger
      const itineraryId = props.match.params.itinerary_id
      const cityId = city.id
      const response = await fetch (`/api/v1/itineraries/${itineraryId}/cities/${cityId}/stops/new`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      setStops(responseBody)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  useEffect(() => {
    debugger
    fetchCity()
  }, [])

  let stopFormHeader

  useEffect(() => {
    debugger
    !_.isEmpty(city) && fetchStops()
  }, [city])
  

  return(
    <div>
      <h1>Add New Stop</h1>
    </div>
  )
}

export default NewStopForm