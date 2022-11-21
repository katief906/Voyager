import React, { useState, useEffect } from "react"
import { Link } from "react-router-dom"

const CityTile = (props) => {
  const handleClick = () => {
    props.setSelectedCity({
      name: props.city.name,
      geonameid: props.city.geonameid,
      latitude: props.city.latitude,
      longitude: props.city.longitude,
      population: props.city.population,
      country_id: props.country.id
    })
  }

  return(
    <li>
      <div onClick={handleClick}>
        {props.city.name}
      </div>
    </li>
  )
}

export default CityTile