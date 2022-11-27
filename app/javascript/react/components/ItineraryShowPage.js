import React, { useState, useEffect } from "react"
import { Link } from "react-router-dom"
import ItineraryCityTile from "./ItineraryCityTile"

const ItineraryShowPage = (props) => {
  const [itinerary, setItinerary] = useState({
    cities: [],
    stops: []
  })

  const fetchItinerary = async() => {
    try {
      const itineraryId = props.match.params.id
      const response = await fetch(`/api/v1/itineraries/${itineraryId}`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      const itineraryData = responseBody.itinerary
      setItinerary(itineraryData)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  let itineraryCities = [] 
  
  if (itinerary.cities.length > 0){
    itineraryCities = itinerary.cities.map((city) => {
      return(
        <ItineraryCityTile
          key={city.id}
          city={city}
          cityId={city.id}
          itineraryId={props.match.params.id}
        />
      )
    })
  }

  useEffect(() => {
    fetchItinerary()
  }, [])

  return(
    <div>
      <h1 className="page-title">{itinerary.name}</h1>
      {itineraryCities}
      <Link to="/">
        <button className="button destination-button">
          <h5>Add a City</h5>
        </button>
      </Link>
    </div>
  )
}

export default ItineraryShowPage