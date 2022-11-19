import React, { useState, useEffect } from "react"
import CitiesList from "./CitiesList"

const CountryShowPage = (props) => {
  const [country, setCountry] = useState({
    name: ""
  })

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
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  useEffect(() => {
    fetchCountry()
  }, [])

  let citiesList

  if (country.name !== "") {
    citiesList = <CitiesList country={country}/>
  }

  return(
    <div>
      <h1 className = "page-title">Cities in {country.name}</h1>
      <p className="text-center">Showing all cities with populations over 100,000</p>
      {citiesList}
    </div>
  )
}

export default CountryShowPage