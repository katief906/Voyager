import React, { useState, useEffect } from "react"
import { Link, withRouter } from "react-router-dom"
import ItineraryStopTile from "./ItineraryStopTile"

const ItineraryCityTile = (props) => {
  const [stops, setStops] = useState([])

  const fetchStops = async() => {
    try {
      const cityId = props.cityId
      const itineraryId = props.itineraryId
      const response = await fetch(`/api/v1/itineraries/${itineraryId}/cities/${cityId}/stops`)
      if (!response.ok){
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      const stopsData = responseBody
      setStops(stopsData)
    } catch(error){
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  useEffect(() => {
    fetchStops()
  }, [])

  let stopTiles = []

  if (stops.length > 0){
    stopTiles = stops.map((stop) => {
      return(
        <ItineraryStopTile
          key={stop.id}
          stop={stop}
        />
      )
    })
  }


  return(
    <div className="callout">
      <h3>
        {props.city.name}
      </h3>
      {stopTiles}
      <h4>Add a Stop:</h4>
      <Link to={`/itineraries/${props.itineraryId}/cities/${props.cityId}/stops/new`}>
        <button className="button destination-button">
          <h5>Activities and Sight-Seeing</h5>
        </button>
      </Link>
      <Link to={`/itineraries/${props.itineraryId}/cities/${props.cityId}/stops/new`}>
        <button className="button destination-button">
          <h5>Places to Eat and Drink</h5>
        </button>
      </Link>
      <Link to={`/itineraries/${props.itineraryId}/cities/${props.cityId}/stops/new`}>
        <button className="button destination-button">
          <h5>Accommodations</h5>
        </button>
      </Link>
    </div>
  )
}

export default ItineraryCityTile
withRouter(ItineraryCityTile)