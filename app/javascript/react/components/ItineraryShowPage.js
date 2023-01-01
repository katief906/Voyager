import React, { useState, useEffect } from "react"
import { Link } from "react-router-dom"
import ItineraryCityTile from "./ItineraryCityTile"

const ItineraryShowPage = (props) => {
  const [itinerary, setItinerary] = useState({
    cities: [],
    stops: []
  })
  const [readyToUpdateDates, setReadyToUpdateDates] = useState(false)
  const [departureDate, setDepartureDate] = useState("")
  const [returnDate, setReturnDate] = useState("")
  const [readyToMakeCitiesAndStops, setReadyToMakeCitiesAndStops] = useState(false)
  const [itineraryCities, setItineraryCities] = useState([])

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
      setReadyToUpdateDates(true)
      setReadyToMakeCitiesAndStops(true)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  const updateDates = () => {
    const options = {
      weekday: "long",
      year: "numeric",
      month: "long",
      day: "numeric",
    }

    const newDepartureDate = new Date(itinerary.departure_date).toLocaleDateString(undefined, options)
    const newReturnDate = new Date(itinerary.return_date).toLocaleDateString(undefined, options)

    setDepartureDate(newDepartureDate)
    setReturnDate(newReturnDate)
  }

  useEffect(() => {
    readyToUpdateDates === true && updateDates()
  }, [readyToUpdateDates])

  useEffect(() => {
    readyToMakeCitiesAndStops === true && updateCities()
  }, [readyToMakeCitiesAndStops])

  
  const updateCities = () => {
    const cityTiles = itinerary.cities.map((city) => {
      return(
        <ItineraryCityTile
          key={city.id}
          city={city}
          cityId={city.id}
          itineraryId={props.match.params.id}
        />
      )
    })
    setItineraryCities(cityTiles)
  }
    
  useEffect(() => {
    fetchItinerary()
  }, [])

  useEffect(() => {
    readyToUpdateDates === true && updateDates()
  }, [readyToUpdateDates])

  useEffect(() => {
    readyToMakeCitiesAndStops === true && updateCities()
  }, [readyToMakeCitiesAndStops])

  return(
    <div>
      <h1 className="page-title">{itinerary.name}</h1>
      <h5 className="text-center">{departureDate} -- {returnDate}</h5>
      {itineraryCities}
    </div>
  )
}

export default ItineraryShowPage