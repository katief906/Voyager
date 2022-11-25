import React from "react"
import { Link, Redirect } from 'react-router-dom'

const ItineraryTile = (props) => {
  return(
    <div className="cell small-12 medium-6 large-3">
      <div className="card">
        <div className="card-section">
          <div className="card-picture">
            <img src="https://www.iconbolt.com/preview/facebook/voyage-icons/international-travel.svg" alt="graphic of a plane flying over the earth"/>
          </div>
        </div>
        <div className="card-section align-center">
          <h3>{props.itinerary.name}</h3>
        </div>
        <div className="card-divider">
          <a href={`/itineraries/${props.itinerary.id}`} className="card-links align-center">
            <h5 className="itinerary-description">Check out this itinerary</h5>
          </a>
        </div>
      </div>
    </div>
  )
}

export default ItineraryTile