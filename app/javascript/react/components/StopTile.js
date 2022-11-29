import React, { useState, useEffect } from "react"
import _ from "lodash"

const StopTile = (props) => {
  return(
    <div className="cell small-12 medium-6 large-4">
      <div className="card stop-tile-card">
        <div className="card-section stop-tile-section">
          <img className="stop-image" src={props.stop.image_url} alt={`Business provided photo of ${props.stop.name}`} />
        </div>
        <div className="card-section stop-tile-section">
          <h4 className="stop-tile-header">{props.stop.name}</h4>
          <h5 className="stop-tile-text">{props.stop.location.display_address.join(", ")}</h5>
          <h5 className="stop-tile-text">{props.stop.rating}/5   |<a href={props.stop.url} target="_blank">   Yelp Reviews</a></h5>
        </div>
        <div className="card-divider">
          <button className="button">Add to itinerary</button>
        </div>
      </div>
    </div>
  )
}

export default StopTile