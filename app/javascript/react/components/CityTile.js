import React, { useState, useEffect } from "react"

const CityTile = (props) => {
  return(
    <li>
      {props.city.name}
    </li>
  )
}

export default CityTile