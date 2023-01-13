import React, { useState, useEffect } from "react"
import { Link } from 'react-router-dom'
import ItineraryTile from "./ItineraryTile"
import greece from 'images/greece_desktop.jpg'

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

  let itineraryTiles
  let itineraryButton

  if (itineraries.length) {
    itineraryTiles = itineraries.map((itinerary) => {
      return(
        <ItineraryTile
          key={itinerary.id}
          itinerary={itinerary}
          cities={itinerary.city}
        />
      )
    })
  }

  return(
    <div className="grid">
      <div class="grid landing-page-container">
        <img className="landing-page-cover-photo" src={greece} alt="Coastal landscape of Mykonos, Greece"/>
        <div>
          <h1 className="landing-page-cover-text">Explore the world</h1>
        </div>
      </div>
      {itineraryButton}
      <h1 className="cell page-title">All Itineraries:</h1>
      <div className="grid-x grid-margin-x equal-height-cards">
        {itineraryTiles}
      </div>
    </div>
  )
}

export default ItinerariesIndexPage