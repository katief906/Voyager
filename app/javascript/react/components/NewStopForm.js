import React, { useState, useEffect } from "react"

const NewStopForm = (props) => {
  const [city, setCity] = useState({})
  const [readyToFetchStops, setReadyToFetchStops] = useState(false)
  const [stops, setStops] = useState([])
  const [selectedStop, setSelectedStop] = useState({})

  const fetchCity = async() => {
    try {
      const cityId = props.match.params.city_id
      const response = await fetch(`/api/v1/cities/${cityId}`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const cityData = await response.json()
      setCity(cityData)
    } catch(error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

  // const fetchStops = async() => {
  //   try {
  //     const itinerary.id = props.match.params.itinerary_id
  //     const cityId = city.id
  //   } catch() {

  //   }
  // }

  useEffect(() => {
    fetchCity()
  }, [])

  if (readyToFetchStops === true) {
    fetchStops()
  }

  return(
    <div>
      <h1>Hi from the New Stop Form!</h1>
    </div>
  )
}

export default NewStopForm