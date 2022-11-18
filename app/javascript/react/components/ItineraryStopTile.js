import React from "react"

const ItineraryStopTile = (props) => {
  return(
    <div className="card">
      <h4>{props.stop.name}</h4>
    </div>
  )
}

export default ItineraryStopTile