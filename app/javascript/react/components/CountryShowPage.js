import React, { useState, useEffect } from "react"
import CitiesList from "./CitiesList"

const CountryShowPage = (props) => {
  const [country, setCountry] = useState({
    name: ""
  })
  const [readyToMakeCitiesList, setReadyToMakeCitiesList] = useState(false)
  const [citiesList, setCitiesList] = useState([])

  const fetchCountry = async() => {
    try {
      const countryId = props.match.params.id
      const response = await fetch(`/api/v1/countries/${countryId}`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const countryData = await response.json()
      setCountry(countryData)
      setReadyToMakeCitiesList(true)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  useEffect(() => {
    fetchCountry()
  }, [])

  useEffect(() => {
    readyToMakeCitiesList === true && createCitiesList()
  }, [readyToMakeCitiesList])
  
  const createCitiesList = () => {
    setCitiesList(<CitiesList country={country}/>)
  }

  return(
    <div>
      <h1 className = "page-title">Cities in {country.name}</h1>
      <p className="text-center population-size">Showing all cities with populations over 100,000</p>
      {citiesList}
    </div>
  )
}

export default CountryShowPage