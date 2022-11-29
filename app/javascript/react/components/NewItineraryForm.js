import React, { useState } from "react"
import { Redirect } from "react-router-dom"
import _ from "lodash"
import ErrorsList from "./ErrorsList"

const NewItineraryForm = (props) => {
  const [itineraryRecord, setItineraryRecord] = useState({
    name: "",
    departure_date: "",
    return_date: ""
  })
  const [shouldRedirect, setShouldRedirect] = useState(false)
  const [errors, setErrors] = useState({})

  const handleInputChange = (event) => {
    setItineraryRecord({
      ...itineraryRecord,
      [event.currentTarget.name]: event.currentTarget.value
    })
  }

  const validForSubmission = () => {
    let submitErrors = {}
    const today = new Date().toISOString().slice(0, 10)
    const requiredFields = ["name", "departure_date", "return_date"]
    requiredFields.forEach((field) => {
      if (itineraryRecord[field].trim() === "") {
        submitErrors = {
          ...submitErrors,
          [field]: "must be filled in"
        }
      }

      if ((itineraryRecord["departure_date"].trim() !== "") && (itineraryRecord["departure_date"] < today)) {
        submitErrors = {
          ...submitErrors,
          ["departure date"]: "must be on or after today's date"
        }
      } 

      if ((itineraryRecord["return_date"].trim() !== "") && (itineraryRecord["return_date"] <= itineraryRecord["departure_date"])) {
        submitErrors = {
          ...submitErrors,
          ["return date"]: "must be after selected Departure Date"
        }
      } 
    })
    setErrors(submitErrors)
    return _.isEmpty(submitErrors)
  }

  const postNewItinerary = async(event) => {
    event.preventDefault()
    if (validForSubmission()) {
      try {
        const cityId = props.match.params.id
        const response = await fetch(`/api/v1/cities/${cityId}/itineraries`, {
          method: "POST",
          credentials: "same-origin",
          headers: {
            "Accept": "application/json",
            "Content-Type": "application/json"
          },
          body: JSON.stringify({ itinerary: itineraryRecord })
        })
        if (!response.ok) {
          const errorMessage = `${response.status} (${response.statusText})`
          throw new Error(errorMessage)
        }
        const itineraryBody = await response.json()
        if (itineraryBody.itinerary) {
          setItineraryRecord(itineraryBody.itinerary)
          setShouldRedirect(true)
        } else if (itineraryBody.error) {
          setErrors(itineraryBody.error)
        }
      } catch(error) {
        console.error(`Error in fetch: ${error.message}`)
      }
    }
  }
  
  if (shouldRedirect) {
    return <Redirect to={`/itineraries/${itineraryRecord.id}`} />
  }

  return(
    <form onSubmit={postNewItinerary}>
      <h1>Create a New Itinerary</h1>
      <ErrorsList errors={errors}/>
        <div className="grid-container form-container">
          <div className="grid-x grid-padding-x">
            <div className="large-4 medium-6 small-12 cell">
              <label>
                Itinerary Name
                <input
                  type="text"
                  placeholder="Ex: Oktoberfest in Germany"
                  name="name"
                  value={itineraryRecord.name}
                  onChange={handleInputChange}
                />
              </label>
            </div>

            <div className="large-4 medium-6 small-12 cell">
              <label>
                Departure Date
                <input
                  type="date"
                  name="departure_date"
                  value={itineraryRecord.departureDate}
                  onChange={handleInputChange}
                />
              </label>
            </div>

            <div className="large-4 medium-6 small-12 cell">
              <label>
                Return Date
                <input
                  type="date"
                  name="return_date"
                  value={itineraryRecord.returnDate}
                  onChange={handleInputChange}
                />
              </label>
            </div>

            <div className="button-group cell form-text">
              <input
                className="button"
                type="submit"
              />
            </div>
          </div>
        </div>
    </form>
  )
}

export default NewItineraryForm