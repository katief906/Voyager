import React, { useState, useEffect } from "react"
import ItineraryTile from "./ItineraryTile"

const ItinerariesIndexPage = (props) => {
  const [itineraries, setItineraries] = useState([])

  const fetchItineraries = async() => {
    try {
      const response = await fetch("/api/v1/itineraries")
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const itinerariesData = await response.json()
      setItineraries(itinerariesData)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  useEffect(() => {
    fetchItineraries()
  }, [])

  const itineraryTiles = itineraries.map((itinerary) => {
    return(
      <ItineraryTile 
        key={itinerary.id}
        itinerary={itinerary}
      />
    )
  })

  return(
    <div>
      <h1>All Itineraries:</h1>
      {itineraryTiles}
    </div>
  )
}

export default ItinerariesIndexPage