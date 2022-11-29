import _ from "lodash"
import React, { useState, useEffect } from "react"
import StopTile from "./StopTile"

const NewStopForm = (props) => {
  const [city, setCity] = useState(null)
  const [readyToFetchStops, setReadyToFetchStops] = useState(false)
  const [stops, setStops] = useState([])
  const [readyToMakeStopTiles, setReadyToMakeStopTiles] = useState(false)
  const [selectedStop, setSelectedStop] = useState({})

  console.log(city)

  const fetchCity = async() => {
    try {
      const cityId = props.match.params.city_id
      const response = await fetch(`/api/v1/cities/${cityId}`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      setCity(responseBody.city)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  const fetchStops = async() => {
    try {
      const itineraryId = props.match.params.itinerary_id
      const cityId = city.id
      const response = await fetch (`/api/v1/itineraries/${itineraryId}/cities/${cityId}/stops/new`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      if (responseBody['total'] > 0) {
        setStops(responseBody.businesses)
        setReadyToMakeStopTiles(true)
      } else {
        setStops(["No results found"])
      }
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  useEffect(() => {
    fetchCity()
  }, [])

  let stopsList

  if (readyToMakeStopTiles === true) {
    stopsList = stops.map((stop) => {
      return(
        <StopTile 
          key={stop.id}
          stop={stop}
          stopYelpId={stop.id}
        />
      )
    })
  }

  useEffect(() => {
    !_.isEmpty(city) && setReadyToFetchStops(true)
  }, [city])

  useEffect(() => {
    (readyToFetchStops === true) && fetchStops()
  }, [readyToFetchStops])
  

  return(
    <div>
      <h1>Add New Stop</h1>
      {stopsList}
    </div>
  )
}

export default NewStopForm