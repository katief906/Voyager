import React, { useState, useEffect } from "react"
import { Redirect } from "react-router-dom"
import CityTile from "./CityTile"

const CitiesList = (props) => {
  const [cities, setCities] = useState([])
  const [readyToMakeCityTiles, setReadyToMakeCityTiles] = useState(false)
  const [loadingMessage, setLoadingMessage] = useState("")
  const [responseMessage, setResponseMessage] = useState("")
  const [cityTiles, setCityTiles] = useState([])
  const [selectedCity, setSelectedCity] = useState({})
  const [foundOrCreatedCity, setFoundOrCreatedCity] = useState({})
  const [shouldRedirect, setShouldRedirect] = useState(false)

  const fetchCities = async() => {

    setLoadingMessage("Loading...")
    try {
      const countryId = props.country.id
      const response = await fetch(`/api/v1/countries/${countryId}/cities`)
      const responseBody = await response.json()
      if (responseBody.status === 'failed') {
        const errorMessage = `${responseBody.error.code} (${responseBody.error.message})`
        throw new Error(errorMessage)
      }
      const citiesData = responseBody.cities.sort((a,b) => b.population - a.population)
      setLoadingMessage("")
      setCities(citiesData)
      setReadyToMakeCityTiles(true)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
      setLoadingMessage("")
      setResponseMessage("No cities found")
    }
  }

  const makeCityTiles = () => {
    setResponseMessage(`${cities.length} cities found:`)
    cities.sort((a, b) => a.name - b.name)
    const tiles = cities.map((city) => {
      return(
        <CityTile
        key={city.geonameid}
        city={city}
        cityId={city.geonameid}
        country={props.country}
        selectedCity={selectedCity}
        setSelectedCity={setSelectedCity}
        />
        )
      })
    setCityTiles(tiles)
  }

  const findOrCreateCity = async() => {
    try{
      const response = await fetch(`/api/v1/cities`, {
        method: "POST",
        credentials: "same-origin",
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify({ city: selectedCity })
      })
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      setFoundOrCreatedCity(responseBody.city)
      setShouldRedirect(true)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }
      
  useEffect(() => {
    fetchCities()
  }, [])

  useEffect(() => {
    readyToMakeCityTiles === true && makeCityTiles()
  }, [readyToMakeCityTiles])

  useEffect(() => {
    selectedCity.name && findOrCreateCity()
  }, [selectedCity])
  
  if (shouldRedirect === true) {
    return(<Redirect to={`/cities/${foundOrCreatedCity.id}`} />)
  }

  return(
    <div>
      <h4 className = "text-center">
        {loadingMessage}
        {responseMessage}
      </h4>
      {cityTiles}
    </div>
  )
}

export default CitiesList

  // findOrCreateCity(() => {

  // }, [selectedCity])

  