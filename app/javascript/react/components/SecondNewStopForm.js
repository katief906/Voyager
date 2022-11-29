import React, { useState, useEffect } from "react"
import _ from "lodash"
import { Redirect } from "react-router-dom"
import ErrorsList from "./ErrorsList"
import StopTile from "./StopTile"

const SecondNewStopForm = (props) => {
  const [city, setCity] = useState({})
  const [searchRecord, setSearchRecord] = useState({
    categories: "",
    term: ""
  })
  const [loadingMessage, setLoadingMessage] = useState("")
  const [errors, setErrors] = useState({})
  const [stops, setStops] = useState([])
  const [fetchError, setFetchError] = useState("")
  const [readyToMakeStopTiles, setReadyToMakeStopTiles] = useState(false)
  const [readyToMakeErrorCallout, setReadyToMakeErrorCallout] = useState(false)
  const [stopsList, setStopsList] = useState([])
  const [selectedStop, setSelectedStop] = useState({})
  const [readyToPostStop, setReadyToPostStop] = useState(false)
  const [finalStop, setFinalStop] = useState({})
  const [shouldRedirect, setShouldRedirect] = useState(false)
  
  const fetchCity = async() => {
    try {
      const cityId = props.match.params.city_id
      const response = await fetch(`/api/v1/cities/${cityId}`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      setCity(responseBody.city)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  const handleInputChange = (event) => {
    setSearchRecord({
      ...searchRecord,
      [event.currentTarget.name]: event.currentTarget.value
    })
  }

  const validForSubmission = () => {
    let submitErrors = {}
    const requiredFields = ["categories"]
    requiredFields.forEach((field) => {
      if (searchRecord[field].trim() === "") {
        submitErrors = {
          ...submitErrors,
          [field]: "must be filled in"
        }
      }
    })
    setErrors(submitErrors)
    return _.isEmpty(submitErrors)
  }

  const fetchStops = async(event) => {
    event.preventDefault()
    setStops([])
    setFetchError("")
    setStopsList([])
    setLoadingMessage(<h4 className="text-center">Loading...</h4>)
    if (validForSubmission()) {
      try {
        const itineraryId = props.match.params.itinerary_id
        const cityId = props.match.params.city_id
        let url = ""
        if (searchRecord["term"].trim() === "") {
          url = `/api/v1/itineraries/${itineraryId}/cities/${cityId}/stops/new?categories=${searchRecord.categories}`
        } else {
          url = `/api/v1/itineraries/${itineraryId}/cities/${cityId}/stops/new?categories=${searchRecord.categories}&term=${searchRecord.term}`
        }
        const response = await fetch (url)
        if (!response.ok) {
          const errorMessage = `${response.status} (${response.statusText})`
        }
        const responseBody = await response.json()
        if (responseBody['total'] > 0) {
          setLoadingMessage("")
          setStops(responseBody.businesses)
          setReadyToMakeStopTiles(true)
          const catField = document.getElementById("categoryField")
          catField.selectedIndex = null
          setSearchRecord({
            categories: "",
            term: ""
          })
        } else {
          setLoadingMessage("")
          setReadyToMakeErrorCallout(true)
        }
      } catch(error) {
        console.error(`Error in fetch: ${error.message}`)
      }
    }
  }

  const makeStopTiles = () => {
    const newStopsList = stops.map((stop) => {
      return(
        <StopTile 
          key={stop.id}
          stop={stop}
          stopId={stop.id}
          setSelectedStop={setSelectedStop}
          setReadyToPostStop={setReadyToPostStop}
          cityId={props.match.params.city_id}
        />
      )
    })
    setStopsList(newStopsList)
    setReadyToMakeStopTiles(false)
  }

  const makeErrorCallout = () => {
    const newErrorCallout = 
        <h4 className="callout secondary text-center">
          No results found
        </h4>
    setFetchError(newErrorCallout)
    setReadyToMakeErrorCallout(false)
  }

  const postStop = async() => {
    try {
      const itineraryId = props.match.params.itinerary_id
      const cityId = props.match.params.city_id
      const response = await fetch (`/api/v1/itineraries/${itineraryId}/cities/${cityId}/stops`, {
        method: "POST",
        credentials: "same-origin",
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify({ stop: selectedStop })
      })
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const stopBody = await response.json()
      if (stopBody.stop) {
        setFinalStop(stopBody.stop)
        setShouldRedirect(true)
      } else if (stopBody.error) {
        setErrors(stopBody.error)
      }
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  useEffect(() => {
    fetchCity()
  }, [])

  useEffect(() => {
    readyToMakeStopTiles === true && makeStopTiles()
  }, [readyToMakeStopTiles]) 

  useEffect(() => {
    readyToMakeErrorCallout === true && makeErrorCallout()
  }, [readyToMakeErrorCallout]) 

  useEffect(() => {
    readyToPostStop === true && postStop()
  }, [readyToPostStop])

  if (shouldRedirect === true) {
    const itineraryId = props.match.params.itinerary_id
    return <Redirect to={`/itineraries/${itineraryId}`} />
  }

  return(
    <div className="grid-container">
      <form onSubmit={fetchStops}>
        <h1>Add Stop to {city.name}</h1>
        <ErrorsList errors={errors}/>
        <label>
          Stop Category
          <select name="categories" onChange={handleInputChange} id="categoryField">
            <option value="">Make selection</option>
            <option value="active">Active Life</option>
            <option value="arts">Arts + Entertainment</option>
            <option value="food">Food + Drink</option>
            <option value="bedbreakfast,guesthouses,hostels,hotels,resorts,vacation_rentals">Hotels + Accommodations</option>
            <option value="nightlife">Nightlife</option>
            <option value="restaurants">Restaurants</option>
            <option value="shopping">Shopping</option>
          </select>
        </label>
        <label>
          Keyword (optional)
          <input
            type="text"
            placeholder="Ex. 'museum'"
            name="term"
            value={searchRecord.term}
            onChange={handleInputChange}
          />
        </label>
        <input 
          className="button"
          type="submit"
          value="Search"
        />
      </form>
      {loadingMessage}
      {fetchError}
      <div className="grid-x grid-margin-x equal-height-cards">
        {stopsList}
      </div>
    </div>
  )
}

export default SecondNewStopForm