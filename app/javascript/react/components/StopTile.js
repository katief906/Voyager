import React, { useState, useEffect } from "react"
import _ from "lodash"

const StopTile = (props) => {
  const handleClick = (event) => {
    debugger
    event.preventDefault()
    props.setSelectedStop({
      name: props.stop.name,
      address: props.stop.location.address1,
      zip: props.stop.location.zip_code,
      telephone: props.stop.display_phone,
      yelp_id: props.stop.id,
      latitude: props.stop.coordinates.latitude,
      longitude: props.stop.coordinates.longitude,
      image_url: props.stop.image_url,
      price: props.stop.price,
      yelp_url: props.stop.url,
    })
    props.setReadyToPostStop(true)
  }

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
        <div onClick={handleClick} className="card-divider stop-tile-divider">
          <h4 className="stop-tile-click">Add to itinerary</h4>
        </div>
      </div>
    </div>
  )
}

export default StopTile