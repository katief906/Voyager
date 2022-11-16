import React from "react"

const ItineraryTile = (props) => {
  return(
    <div className="cell small-12 medium-6 large-3">
      <div className="card">
        <div className="card-section">
          <div className="card-picture">
            <img src="https://www.iconbolt.com/preview/facebook/voyage-icons/international-travel.svg" alt="graphic of a plane flying over the earth"/>
          </div>
        </div>
        <div className="card-section">
          <span className="highlightme">
            <h3>{props.itinerary.name}</h3>
          </span>
        </div>
        <div className="card-divider">
          <h5 className="itinerary-description">Brief itinerary description here to entice User to travel!</h5>
        </div>
      </div>
    </div>
  )
}

export default ItineraryTile