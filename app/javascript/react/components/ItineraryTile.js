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
        <Link to={`/itineraries/${props.itinerary.id}`} className="card-links align-center">
          <div className="card-divider">
            <h5 className="itinerary-description">View Itinerary</h5>
          </div>
        </Link>
      </div>
    </div>
  )
}

export default ItineraryTile