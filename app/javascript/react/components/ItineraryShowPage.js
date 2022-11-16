import React, { useState, useEffect } from "react"

const ItineraryShowPage = (props) => {
  const [itinerary, setItinerary] = useState({})

  const fetchItinerary = async() => {
    try {
      const itineraryId = props.match.params.id
      const response = await fetch(`/api/v1/itineraries/${itineraryId}`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
      }
      const itineraryData = await response.json()
      setItinerary(itineraryData)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  useEffect(() => {
    fetchItinerary()
  }, [])

  return(
    <div>
      {itinerary.name}
    </div>
  )
}

export default ItineraryShowPage