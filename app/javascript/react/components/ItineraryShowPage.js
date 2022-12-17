import React, { useState, useEffect } from "react"
import { Link } from "react-router-dom"
import ItineraryCityTile from "./ItineraryCityTile"

const ItineraryShowPage = (props) => {
  const [itinerary, setItinerary] = useState({
    cities: [],
    stops: []
  })
  const [readyToMakeCitiesAndStops, setReadyToMakeCitiesAndStops] = useState(false)
  const [readyToCheckUser, setReadyToCheckUser] = useState(false)
  const [cityButton, setCityButton] = useState(null)
  const [deleteButton, setDeleteButton] = useState(null)
  const [stopButton, setStopButton] = useState(null)

  const fetchItinerary = async() => {
    try {
      const itineraryId = props.match.params.id
      const response = await fetch(`/api/v1/itineraries/${itineraryId}`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      const itineraryData = responseBody.itinerary
      setItinerary(itineraryData)
      setReadyToCheckUser(true)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  let itineraryCities = [] 
  
  if (itinerary.cities.length > 0){
    itineraryCities = itinerary.cities.map((city) => {
      return(
        <ItineraryCityTile
          key={city.id}
          city={city}
          cityId={city.id}
          itineraryId={props.match.params.id}
        />
      )
    })
  }
    
    const updateCityButton = () => {
      debugger
      if ((itinerary.current_user) && (itinerary.user.id === itinerary.current_user.id)) {
        debugger
        setCityButton(<button className="button">Add Another City</button>)
        setDeleteButton(<button className="button" onClick={handleDelete}>Delete Itinerary</button>)
      }
    }
    
  useEffect(() => {
    fetchItinerary()
  }, [])

  useEffect(() => {
    readyToCheckUser === true && updateCityButton()
  }, [readyToCheckUser])

  return(
    <div>
      <h1 className="page-title">{itinerary.name}</h1>
      {itineraryCities}
      {cityButton}
      <p></p>
      {deleteButton}
    </div>
  )
}

export default ItineraryShowPage